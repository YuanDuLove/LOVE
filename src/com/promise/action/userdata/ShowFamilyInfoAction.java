package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowFamilyInfoService;

public class ShowFamilyInfoAction {

	public String execute() throws Exception{
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryFamilyInfo();
		parentstatus = (String) msg.get("PARENTSTATUS");
		parentmoney = (String) msg.get("PARENTMONEY"); 
		brother = (String) msg.get("BROTHER"); 
		parentsexpect = (String) msg.get("PARENTSEXPECT");
		return "familyInfo";
	}
	private ShowFamilyInfoService service;
	public void setService(ShowFamilyInfoService service) {
		this.service = service;
	}
	private Map msg = null;
	private String parentstatus = null;
	private String parentmoney = null;
	private String brother = null;
	private String parentsexpect = null;
	public String getParentstatus() {
		return parentstatus;
	}
	public void setParentstatus(String parentstatus) {
		this.parentstatus = parentstatus;
	}
	public String getParentmoney() {
		return parentmoney;
	}
	public void setParentmoney(String parentmoney) {
		this.parentmoney = parentmoney;
	}
	public String getBrother() {
		return brother;
	}
	public void setBrother(String brother) {
		this.brother = brother;
	}
	public String getParentsexpect() {
		return parentsexpect;
	}
	public void setParentsexpect(String parentsexpect) {
		this.parentsexpect = parentsexpect;
	}
}
