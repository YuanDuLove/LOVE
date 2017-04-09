package com.promise.service;

import java.util.Map;

public interface UploadPhotoService {
	public void setMapDto(Map dto);
	public boolean uploadImg() throws Exception;

}
