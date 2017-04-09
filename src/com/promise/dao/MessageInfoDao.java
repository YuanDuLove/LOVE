package com.promise.dao;

import java.util.List;
import java.util.Map;

public interface MessageInfoDao {
	/**
	 * 给dao传值
	 * @param dto
	 */
	public void setMapDto(Map dto);
	public boolean addMessage() throws Exception;
	public Map queryUnReadMsg() throws Exception;
	public Map queryUnReadNotice() throws Exception;
	//求魅力值
	public Map charmCount() throws Exception;
	//根据类型查询所有消息
	public List queryMsgByType() throws Exception;
	
	//未读消息减一
	public boolean checkMsg() throws Exception;

}
