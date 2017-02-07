package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ModifyFamilyInfoService;

public class ModifyFamilyInfoServiceImpl implements ModifyFamilyInfoService {

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
	public boolean modifyFamilyInfo() throws Exception{
		return this.dao.modifyFamilyInfo();
	}

}
