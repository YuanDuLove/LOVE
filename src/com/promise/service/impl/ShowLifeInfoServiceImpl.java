package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ShowLifeInfoService;

public class ShowLifeInfoServiceImpl implements ShowLifeInfoService {

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
	public Map queryLifeInfo() throws Exception {
		return dao.queryLifeInfo();
	}

}
