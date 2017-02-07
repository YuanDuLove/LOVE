package com.promise.service;

import java.util.List;
import java.util.Map;

public interface RegService {
	public void setMapDto(Map dto);
	
	public boolean addUser() throws Exception;
	public Map queryUserInfo() throws Exception;
	
//	public boolean addLog()throws Exception;
}
