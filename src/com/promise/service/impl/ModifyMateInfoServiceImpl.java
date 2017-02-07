package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ModifyMateInfoService;

public class ModifyMateInfoServiceImpl implements ModifyMateInfoService {
	
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
	public boolean modifyMateInfo() throws Exception {
		return dao.modifyMateInfo();
	}

}
