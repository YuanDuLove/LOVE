package com.promise.service.impl;

import java.util.List;
import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ShowMainPageService;

public class ShowMainPageServiceImpl implements ShowMainPageService {

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
	public Map queryMainPageInfo() throws Exception {
		return dao.queryMateInfo();
	}

	@Override
	public List queryUserInfoByAss() throws Exception {
		return dao.queryUserInfoByAss();
	}

}
