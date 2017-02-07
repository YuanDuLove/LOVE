package com.promise.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import com.promise.dao.UserInfoDao;
import com.promise.service.RegService;
import com.promise.tools.DateTools;

public class RegServicesImpl implements RegService {

	private UserInfoDao dao;
	private Map dto;
	public void setDao(UserInfoDao dao) {
		this.dao = dao;
	}

	@Override
	public void setMapDto(Map dto) {
		this.dto = dto;
		dao.setMapDto(dto);
	}

	@Override
	public boolean addUser() throws Exception {
		this.dto.put("regdate", DateTools.dateToString(new Date()));
		System.out.println("dto2======="+dto);
		return dao.addUser();
	}

	@Override
	public Map queryUserInfo() throws Exception {
		return dao.loginCheck();
	}
	
	
	
	
	
	
	
	
	
	
	
	
	

//	@Override
//	public boolean addLog() throws Exception {
//		return dao.addLog();
//	}


}
