package com.promise.service.impl;

import java.util.List;
import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ShowQueryInfoService;

public class ShowQueryInfoServiceImpl implements ShowQueryInfoService {

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
	public List queryUserInfo() throws Exception {
		return dao.queryUserInfo();
	}

}
