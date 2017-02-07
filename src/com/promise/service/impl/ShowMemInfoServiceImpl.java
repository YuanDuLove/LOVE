package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ShowMemInfoService;

public class ShowMemInfoServiceImpl implements ShowMemInfoService {
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
	public Map queryMemInfo() throws Exception{
		return dao.queryInfoById();
	}

}
