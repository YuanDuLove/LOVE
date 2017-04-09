package com.promise.service.impl;

import java.util.List;
import java.util.Map;

import com.promise.dao.MessageInfoDao;
import com.promise.service.ShowMsgsService;

public class ShowMsgsServiceImpl implements ShowMsgsService {
	private Map dto;
	private MessageInfoDao dao;

	public void setDao(MessageInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		this.dao.setMapDto(dto);
	}

	@Override
	public List queryMsgByType() throws Exception {
		return dao.queryMsgByType();
	}

}
