package com.promise.service;

import java.util.Map;

public interface ShowUserPhotoService {
	public void setMapDto(Map dto);
	public Map queryUserPhoto() throws Exception;

}
