package com.promise.service;

import java.util.Map;

public interface ShowMarryInfoService {
	public void setMapDto(Map dto);
	public Map queryMarryInfo() throws Exception;
}
