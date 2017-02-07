package com.promise.service.impl;

import java.util.List;
import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.LoginService;

public class LoginServiceImpl implements LoginService {
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
	public Map loginCheck() throws Exception {
		return this.dao.loginCheck();
	}

}
