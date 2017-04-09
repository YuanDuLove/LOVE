package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.MessageInfoDao;
import com.promise.service.CheckMsgService;

public class CheckMsgServiceImpl implements CheckMsgService {
	public Map dto;
	public MessageInfoDao dao;
	
	
	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		dao.setMapDto(dto);
		

	}

	public void setDao(MessageInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public void checkMsg() throws Exception {
		this.dao.checkMsg();
	}

}
