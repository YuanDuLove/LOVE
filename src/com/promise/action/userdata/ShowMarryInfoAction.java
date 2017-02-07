package com.promise.action.userdata;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowMarryInfoService;

public class ShowMarryInfoAction {

	public String execute() throws Exception {
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryMarryInfo();
		System.out.println(msg);
		lover = (String) msg.get("LOVER");
		zodiac = (String) msg.get("ZODIAC");
		marrydate = (String) msg.get("MARRYDATE");
		wantchild = (String) msg.get("WANTCHILD");
		parent = (String) msg.get("PERENT");
		otherparent = (String) msg.get("OTHERPARENT");
		remotelove = (String) msg.get("REMOTELOVE");
		//dating = (List) msg.get("DATING");
		return "marryInfo";
	}

	private ShowMarryInfoService service;
	private Map msg = null;
	private String lover = null;
	private String zodiac = null;
	private String marrydate = null;
	private String wantchild = null;
	private String parent = null;
	private String otherparent = null;
	private String remotelove = null;
	//private List dating = null;

	public void setService(ShowMarryInfoService service) {
		this.service = service;
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

//	public List getDating() {
//		return dating;
//	}
//
//	public void setDating(List dating) {
//		this.dating = dating;
//	}

}
