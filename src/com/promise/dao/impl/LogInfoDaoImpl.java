package com.promise.dao.impl;

import java.util.List;
import java.util.Map;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.promise.dao.LogInfoDao;

public class LogInfoDaoImpl extends JdbcDaoSupport implements LogInfoDao {

	private Map dto;
	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
	}

	/**
	 * 查询所有的日志
	 * @return
	 */
	@Override
	public List queryAllInfo()  throws Exception{
		StringBuilder sql = new StringBuilder()
		.append("SELECT ID,LOG_NUM,INFOS,ADD_DATE")
		.append("  FROM LOGINFO")
		;
		return this.getJdbcTemplate().queryForList(sql.toString());
	}

	/**
	 * 添加日志
	 * @return
	 * @throws Exception
	 */
	@Override
	public boolean addLog() throws Exception {
		
		StringBuilder sql = new StringBuilder()
		.append("INSERT INTO LOGINFO(ID,LOG_NUM,INFOS,ADD_DATE)")
		.append("             VALUES(LOG_SEQ.NEXTVAL,?,?,TO_DATE(?,'yyyy-MM-dd hh24:mi:ss'))")
		;
		
		Object args[] = {
			this.dto.get("log_num"),
			this.dto.get("infos"),
			this.dto.get("add_date")
		};
		
		return this.getJdbcTemplate().update(sql.toString(), args) > 0;
	}

}
