package com.promise.action.userdata;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
		
		String photoStr = (String) msg.get("PHOTOS");
		photos = new ArrayList();
		Map img ;
		if(photoStr != null && !"".equals(photoStr)){
			String [] photo = photoStr.split(";");
			for(int i = 1;i < photo.length;i++){
				img = new HashMap();
				img.put("PHOTOS", photo[i]);
				photos.add(img);
			}
		}
		
		System.out.println("11111111"+userImg);
		return "main";
	}
	
	private ShowUserPhotoService service;
	private List photos = null;
	
	public List getPhotos() {
		return photos;
	}
	public void setPhotos(List photos) {
		this.photos = photos;
	}
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
