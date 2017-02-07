package com.promise.service;

import java.util.Map;

public interface ShowLifeInfoService {
	public void setMapDto(Map dto);
	public Map queryLifeInfo() throws Exception;
}
