package com.promise.tools.db.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.struts2.util.ListEntry;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.promise.tools.db.DBOptions;

public class DBOptionsImpl extends JdbcDaoSupport implements DBOptions
{

	@Override
	public List getOptions(String name, String pcode) throws Exception
	{
		StringBuilder sql=new StringBuilder()
		.append("SELECT CODE,VALUE")
		.append("  FROM SYSCODE")
		.append(" WHERE PCODE=?")
		.append("   AND NAME=?")
		;
		Object args[]={
				pcode,	name
		};
		
		List options=this.getJdbcTemplate()
		             .query
		             (
		                sql.toString(),
		                args,
		                new RowMapper<ListEntry>()
		                {
							@Override
							public ListEntry mapRow(ResultSet rs, int rowNum)throws SQLException
							{
								ListEntry le=new ListEntry(rs.getString(1), rs.getString(2),false);
								return le;
							}
		                }
		             );
		return options;
	}

}
