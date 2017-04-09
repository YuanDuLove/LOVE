package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.MessageInfoDao;
import com.promise.dao.UserInfoDao;
import com.promise.service.ShowMemInfoService;

public class ShowMemInfoServiceImpl implements ShowMemInfoService {
	private UserInfoDao dao;
	private MessageInfoDao dao2;

	public void setDao2(MessageInfoDao dao2) {
		this.dao2 = dao2;
	}

	private Map dto;
	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		this.dao.setMapDto(dto);
		this.dao2.setMapDto(dto);
	}

	public void setDao(UserInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public Map queryMemInfo() throws Exception{
		return dao.queryInfoById();
	}

	@Override
	public Map charmCount() throws Exception {
		return this.dao2.charmCount();
	}
	
	

}
