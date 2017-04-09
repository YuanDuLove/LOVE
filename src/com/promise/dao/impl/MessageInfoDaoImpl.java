package com.promise.dao.impl;

import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.promise.dao.MessageInfoDao;

public class MessageInfoDaoImpl extends JdbcDaoSupport implements MessageInfoDao {
	private Map dto = null;

	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
	}
	
	@Override
	public boolean addMessage() throws Exception{
		StringBuilder sql = new StringBuilder()
		.append("INSERT INTO MESSAGEINFO(SENDID,RECEIVERID,DETAIL,TYPE,FLAG,SENDTIME)")
		.append("                 VALUES(?,?,?,?,?,?)")
		;
		
		Object args[] ={
				dto.get("sendID"),
				dto.get("id"),
				dto.get("message"),
				dto.get("type"),
				dto.get("flag"),
				dto.get("sendtime")
		};
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

	@Override
	public Map queryUnReadMsg() throws Exception {
		StringBuilder sql = new StringBuilder()
		.append("SELECT COUNT(ID) COUNT")
		.append("  FROM MESSAGEINFO")
		.append(" WHERE FLAG = ?")
		.append("   AND RECEIVERID = ?")
		.append("   AND TYPE IN (2,3)")
		;
		
		Object args[] = {
				"2",
				dto.get("id")
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	protected final Map queryForMapAss(String sql,Object...id)throws Exception
	{
	
		return this.getJdbcTemplate()
		    .query
		    (
		      sql,
		      new ResultSetExtractor<Map>()
		      {
				@Override
				public Map extractData(ResultSet rs) throws SQLException,DataAccessException
				{
					Map ins=null;
					if(rs.next())
					{
						ins=new HashMap();
						ResultSetMetaData rsmd=rs.getMetaData();
						int size=rsmd.getColumnCount();
						for(int i=1;i<=size;i++)
						{
							ins.put(rsmd.getColumnLabel(i), rs.getString(i));
						}
					}
					return ins;
				}
		    	  
		      },
		      id
		    );
	}

	@Override
	public Map charmCount() throws Exception {
		StringBuilder sql = new StringBuilder()
		.append("SELECT COUNT(ID) COUNT")
		.append("  FROM MESSAGEINFO")
		.append(" WHERE TYPE = ?")
		.append("   AND RECEIVERID = ?")
		;
		
		Object args[] = {
				"5",
				dto.get("id")
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	@Override
	public List queryMsgByType() throws Exception {
		String type = (String) dto.get("type");
		StringBuilder sql = new StringBuilder()
		.append("SELECT M.ID ID,M.SENDID SENDID,M.DETAIL DETAIL,M.TYPE TYPE,M.SENDTIME SENDTIME,")
		.append("       M.FLAG FLAG,U.USERPHOTO USERPHOTO,U.NIKENAME NIKENAME,U.ID USERID")
		.append("  FROM MESSAGEINFO M,USERINFO U")
		.append(" WHERE M.FLAG <> 3")
		.append("   AND M.RECEIVERID = ?")
		.append("   AND M.SENDID = U.ID")
		;
		if("msg".equals(type)){
			sql.append("   AND M.TYPE IN (2,3)");
		} else if("email".equals(type)){
			sql.append("   AND M.TYPE = 4");
		} else if("notice".equals(type)){
			sql.append("   AND M.TYPE = 5");
		}
		Object args = this.dto.get("id");
		return this.getJdbcTemplate().queryForList(sql.toString(), args);
	}

	@Override
	public Map queryUnReadNotice() throws Exception {
		StringBuilder sql = new StringBuilder()
		.append("SELECT COUNT(ID) COUNT")
		.append("  FROM MESSAGEINFO")
		.append(" WHERE FLAG = ?")
		.append("   AND RECEIVERID = ?")
		.append("   AND TYPE = ?")
		;
		
		Object args[] = {
				"2",
				dto.get("id"),
				"5"
		};
		return this.queryForMapAss(sql.toString(), args);
	}

	@Override
	public boolean checkMsg() throws Exception {
		StringBuilder sql = new StringBuilder()
		.append("UPDATE MESSAGEINFO")
		.append("   SET FLAG = '1'")
		.append(" WHERE ID = ?")
		;
		Object args = this.dto.get("msgId");
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
		
	}
}
