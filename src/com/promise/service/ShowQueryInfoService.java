package com.promise.service;

import java.util.List;
import java.util.Map;

public interface ShowQueryInfoService {
	public void setMapDto(Map dto);
	public List queryUserInfo() throws Exception;
}
