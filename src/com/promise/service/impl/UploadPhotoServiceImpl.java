package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ModifyUserPhotoService;
import com.promise.service.UploadPhotoService;

public class UploadPhotoServiceImpl implements UploadPhotoService {
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
	public boolean uploadImg() throws Exception {
		return dao.uploadImg();
	}

}
