package com.promise.service;

import java.util.Map;

public interface ShowFamilyInfoService {
	public void setMapDto(Map dto);
	public Map queryFamilyInfo() throws Exception;
}
