package com.promise.dao.impl;

import java.util.Map;

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

}
