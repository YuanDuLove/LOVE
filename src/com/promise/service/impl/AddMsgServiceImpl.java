package com.promise.service.impl;

import java.util.Map;

import com.promise.dao.MessageInfoDao;
import com.promise.service.AddMsgService;

public class AddMsgServiceImpl implements AddMsgService {
	private Map dto;
	private MessageInfoDao dao;

	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		this.dao.setMapDto(dto);
	}

	public void setDao(MessageInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public void addMsg() throws Exception {
		this.dao.addMessage();
	}

}
