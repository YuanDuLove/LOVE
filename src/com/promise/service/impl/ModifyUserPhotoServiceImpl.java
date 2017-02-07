package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ModifyUserPhotoService;

public class ModifyUserPhotoServiceImpl implements ModifyUserPhotoService {
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
	public boolean modifyUserPhoto() throws Exception {
		return dao.modifyUserPhoto();
	}

}
