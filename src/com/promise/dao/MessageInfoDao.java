package com.promise.dao;

import java.util.Map;

public interface MessageInfoDao {
	/**
	 * 给dao传值
	 * @param dto
	 */
	public void setMapDto(Map dto);
	public boolean addMessage() throws Exception;

}
