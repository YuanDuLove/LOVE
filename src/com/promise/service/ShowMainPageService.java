package com.promise.service;

import java.util.List;
import java.util.Map;

public interface ShowMainPageService {
	public void setMapDto(Map dto);
	public Map queryMainPageInfo() throws Exception;
	
	/**
	 * 查询未读消息
	 * @return
	 * @throws Exception
	 */
	public Map queryUnReadMsg() throws Exception;
	
	/**
	 * 查询未读通知
	 */
	public Map queryUnReadNotice() throws Exception;
	
	/**
	 * 推荐搜索
	 * @return
	 * @throws Exception
	 */
	public List queryUserInfoByAss() throws Exception;

}
