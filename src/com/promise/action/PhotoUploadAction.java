package com.promise.action;

import java.io.File;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;

public class PhotoUploadAction extends ActionSupport implements RequestAware{
	
	private File wj;  
    private String wjName;
    private String wjDesc;

	@Override
	public void setRequest(Map<String, Object> arg0) {
		
	}
	

}
