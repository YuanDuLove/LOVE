package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ShowFamilyInfoService;

public class ShowFamilyInfoServiceImpl implements ShowFamilyInfoService {

	private UserInfoDao dao;
	private Map dto;
	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		dao.setMapDto(dto);
	}

	public void setDao(UserInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public Map queryFamilyInfo() throws Exception {
		return dao.queryFamilyInfo();
	}

}
