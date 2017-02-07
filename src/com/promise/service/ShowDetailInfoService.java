package com.promise.service;

import java.util.Map;

public interface ShowDetailInfoService {
	public void setMapDto(Map dto);
	public Map queryDetailInfo() throws Exception;
}
