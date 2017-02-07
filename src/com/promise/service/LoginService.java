package com.promise.service;

import java.util.List;
import java.util.Map;

public interface LoginService {
	public void setMapDto(Map dto);
	public Map loginCheck() throws Exception;

}
