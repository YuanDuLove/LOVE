package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowMateInfoService;

public class ShowMateInfoAction {

	public String execute() throws Exception {
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryMateInfo();
		mate_sex = (String) msg.get("MATE_SEX");
		mate_bage = (String) msg.get("MATE_BAGE");
		mate_eage = (String) msg.get("MATE_EAGE");
		mate_workarea = (String) msg.get("MATE_AREA");
		mate_nativearea = (String) msg.get("MATE_NATIVE");
		mate_marry = (String) msg.get("MATE_MARRYSTATUS");
		mate_edu = (String) msg.get("MATE_EDUS");
		mate_bmoney = (String) msg.get("MATE_BMONEYS");
		mate_emoney = (String) msg.get("MATE_EMONEYS");
		mate_child = (String) msg.get("MATE_CHILD");
		mate_bheight = (String) msg.get("MATE_BHEIGHT");
		mate_eheight = (String) msg.get("MATE_EHEIGHT");
		System.out.println(msg);
		return "mateInfo";
	}

	private ShowMateInfoService service;

	public void setService(ShowMateInfoService service) {
		this.service = service;
	}

	private Map msg = null;

	private String mate_sex = null;
	private String mate_bage = null;
	private String mate_eage = null;
	private String mate_workarea = null;
	private String mate_nativearea = null;
	private String mate_marry = null;
	private String mate_edu = null;
	private String mate_bmoney = null;
	private String mate_emoney = null;
	private String mate_child = null;
	private String mate_bheight = null;
	private String mate_eheight = null;

	public String getMate_sex() {
		return mate_sex;
	}

	public void setMate_sex(String mate_sex) {
		this.mate_sex = mate_sex;
	}

	public String getMate_bage() {
		return mate_bage;
	}

	public void setMate_bage(String mate_bage) {
		this.mate_bage = mate_bage;
	}

	public String getMate_eage() {
		return mate_eage;
	}

	public void setMate_eage(String mate_eage) {
		this.mate_eage = mate_eage;
	}

	public String getMate_workarea() {
		return mate_workarea;
	}

	public void setMate_workarea(String mate_workarea) {
		this.mate_workarea = mate_workarea;
	}

	public String getMate_nativearea() {
		return mate_nativearea;
	}

	public void setMate_nativearea(String mate_nativearea) {
		this.mate_nativearea = mate_nativearea;
	}

	public String getMate_marry() {
		return mate_marry;
	}

	public void setMate_marry(String mate_marry) {
		this.mate_marry = mate_marry;
	}

	public String getMate_edu() {
		return mate_edu;
	}

	public void setMate_edu(String mate_edu) {
		this.mate_edu = mate_edu;
	}

	public String getMate_bmoney() {
		return mate_bmoney;
	}

	public void setMate_bmoney(String mate_bmoney) {
		this.mate_bmoney = mate_bmoney;
	}

	public String getMate_emoney() {
		return mate_emoney;
	}

	public void setMate_emoney(String mate_emoney) {
		this.mate_emoney = mate_emoney;
	}

	public String getMate_child() {
		return mate_child;
	}

	public void setMate_child(String mate_child) {
		this.mate_child = mate_child;
	}

	public String getMate_bheight() {
		return mate_bheight;
	}

	public void setMate_bheight(String mate_bheight) {
		this.mate_bheight = mate_bheight;
	}

	public String getMate_eheight() {
		return mate_eheight;
	}

	public void setMate_eheight(String mate_eheight) {
		this.mate_eheight = mate_eheight;
	}
}
