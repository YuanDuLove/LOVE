package com.promise.service;

import java.util.Map;
/**
 * 修改注册信息页面service
 * @author Administrator
 *
 */
public interface ModifyRegInfoService {
	public void setMapDto(Map dto);
	public boolean modifyRegInfo() throws Exception;

}
