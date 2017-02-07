package com.promise.dao;

import java.util.List;
import java.util.Map;

/**
 * 日志表所有操作
 * @author zangxiaohui
 * 
 */
public interface LogInfoDao {
	/**
	 * dto传递数据
	 * @param dto
	 */
	public void setMapDto(Map dto);
	
	/**
	 * 添加日志
	 * @return
	 * @throws Exception
	 */
	public boolean addLog() throws Exception;
	
	/**
	 * 查询所有的日志
	 * @return
	 */
	public List queryAllInfo() throws Exception;

}
