package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyMarryViewService;
import com.promise.tools.Tools;

public class ModifyMarryViewAction {
	
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = service.modifyMarryView()?"修改成功":"修改失败";
		return "marryView";
	}
	
	
	private ModifyMarryViewService service = null;
	private String msg = null;
	private String lover = null;
	private String zodiac = null;
	private String marrydate = null;
	private String wantchild = null;
	private String parent = null;
	private String otherparent = null;
	private String remotelove = null;
	//private String dating = null;
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getLover() {
		return lover;
	}
	public void setLover(String lover) {
		this.lover = lover;
	}
	public String getZodiac() {
		return zodiac;
	}
	public void setZodiac(String zodiac) {
		this.zodiac = zodiac;
	}
	public String getMarrydate() {
		return marrydate;
	}
	public void setMarrydate(String marrydate) {
		this.marrydate = marrydate;
	}
	public String getWantchild() {
		return wantchild;
	}
	public void setWantchild(String wantchild) {
		this.wantchild = wantchild;
	}
	public String getParent() {
		return parent;
	}
	public void setParent(String parent) {
		this.parent = parent;
	}
	public String getOtherparent() {
		return otherparent;
	}
	public void setOtherparent(String otherparent) {
		this.otherparent = otherparent;
	}
	public String getRemotelove() {
		return remotelove;
	}
	public void setRemotelove(String remotelove) {
		this.remotelove = remotelove;
	}
//	public String getDating() {
//		return dating;
//	}
//	public void setDating(String dating) {
//		this.dating = dating;
//	}
	public void setService(ModifyMarryViewService service) {
		this.service = service;
	}
	

}
