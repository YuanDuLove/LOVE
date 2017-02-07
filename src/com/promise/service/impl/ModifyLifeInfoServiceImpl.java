package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ModifyLifeInfoService;

public class ModifyLifeInfoServiceImpl implements ModifyLifeInfoService {
	private UserInfoDao dao;
	private Map dto;

	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		this.dao.setMapDto(dto);
	}

	public void setDao(UserInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public boolean modifyLifeInfo() throws Exception{
		return this.dao.modifyLifeInfo();
	}

}
