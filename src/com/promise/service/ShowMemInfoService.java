package com.promise.service;

import java.util.Map;

public interface ShowMemInfoService {
	public void setMapDto(Map dto);
	public Map queryMemInfo() throws Exception;
	//求魅力值
	public Map charmCount() throws Exception;

}
