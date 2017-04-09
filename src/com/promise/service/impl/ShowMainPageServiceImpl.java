package com.promise.service.impl;

import java.util.List;
import java.util.Map;

import com.promise.dao.MessageInfoDao;
import com.promise.dao.UserInfoDao;
import com.promise.service.ShowMainPageService;

public class ShowMainPageServiceImpl implements ShowMainPageService {

	private UserInfoDao dao;
	private MessageInfoDao dao2;
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

	public void setDao2(MessageInfoDao dao2) {
		this.dao2 = dao2;
	}

	@Override
	public Map queryMainPageInfo() throws Exception {
		return dao.queryMateInfo();
	}
	
	

	@Override
	public List queryUserInfoByAss() throws Exception {
		return dao.queryUserInfoByAss();
	}

	@Override
	public Map queryUnReadMsg() throws Exception {
		return dao2.queryUnReadMsg();
	}

	@Override
	public Map queryUnReadNotice() throws Exception {
		return dao2.queryUnReadNotice();
	}
	
	

}
