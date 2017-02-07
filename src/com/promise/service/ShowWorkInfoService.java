package com.promise.service;

import java.util.Map;

public interface ShowWorkInfoService {
	public void setMapDto(Map dto);
	public Map queryWorkInfo() throws Exception;
}
