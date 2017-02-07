package com.promise.service;

import java.util.Map;

public interface ShowRegInfoService {
	public void setMapDto(Map dto);
	/**
	 * 根据id查询注册信息
	 * @return
	 */
	public Map queryRegInfoById() throws Exception;

}
