package com.promise.service.impl;

import java.util.Map;

import org.springframework.jdbc.core.support.JdbcDaoSupport;

import com.promise.dao.UserInfoDao;
import com.promise.service.ModifyRegInfoService;

public class ModifyRefInfoServiceImpl implements
		ModifyRegInfoService {
	
	private Map dto;
	private UserInfoDao dao;
	

	public void setDao(UserInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		this.dao.setMapDto(dto);
	}

	@Override
	public boolean modifyRegInfo() throws Exception {
		return this.dao.modifyRegInfo();
	}

}
