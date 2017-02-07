package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowUserPhotoService;

public class ShowUserPhotoAction {
	
	public String execute() throws Exception{
		
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		Map msg = service.queryUserPhoto();
		System.out.println("333333333333"+msg);
		userImg = (String) msg.get("USERPHOTO");
		if(userImg == null || userImg.equals("")){
			userImg = "man.jpg";
		} else{
			userImg = userImg.replaceAll("\\\\", "/");
		}
		
		System.out.println("11111111"+userImg);
		return "main";
	}
	
	private ShowUserPhotoService service;
	public void setService(ShowUserPhotoService service) {
		this.service = service;
	}

	private String userImg = null;
	public String getUserImg() {
		return userImg;
	}
	public void setUserImg(String userImg) {
		this.userImg = userImg;
	}
	
	

}
