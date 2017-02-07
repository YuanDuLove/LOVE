package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.ShowDetailInfoService;

public class ShowDetailInfoServiceImpl implements ShowDetailInfoService {

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
	public Map queryDetailInfo() throws Exception {
		return dao.queryDetailInfo();
	}

}
