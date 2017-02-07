package com.promise.service;

import java.util.List;
import java.util.Map;

public interface ShowMainPageService {
	public void setMapDto(Map dto);
	public Map queryMainPageInfo() throws Exception;
	/**
	 * 推荐搜索
	 * @return
	 * @throws Exception
	 */
	public List queryUserInfoByAss() throws Exception;

}
