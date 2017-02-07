package com.promise.service;

import java.util.Map;

public interface ShowMateInfoService {
	public void setMapDto(Map dto);
	public Map queryMateInfo() throws Exception;
}
