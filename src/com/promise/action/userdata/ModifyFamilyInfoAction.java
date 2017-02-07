package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyFamilyInfoService;
import com.promise.tools.Tools;

public class ModifyFamilyInfoAction {
	
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = service.modifyFamilyInfo()?"修改成功":"修改失败";
		return "familyInfo";
	}
	
	private ModifyFamilyInfoService service;
	private String parentstatus = null;
	private String parentmoney = null;
	private String brother = null;
	private String parentsexpect = null;
	private String msg = null;
	
	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

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

	public void setService(ModifyFamilyInfoService service) {
		this.service = service;
	}

}
