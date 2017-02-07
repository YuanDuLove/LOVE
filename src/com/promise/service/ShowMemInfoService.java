package com.promise.service;

import java.util.Map;

public interface ShowMemInfoService {
	public void setMapDto(Map dto);
	public Map queryMemInfo() throws Exception;

}
