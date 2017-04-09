package com.promise.service;

import java.util.List;
import java.util.Map;

/**
 * 所有关于消息中心里的查询均调用这一个service
 * @author Administrator
 *
 */
public interface ShowMsgsService {
	public void setMapDto(Map dto);
	public List queryMsgByType() throws Exception;
}
