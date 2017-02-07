package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyInnerInfoService;
import com.promise.tools.Tools;

public class ModifyInnerInfoAction {
	
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = service.modifyInnerInfo()?"修改成功":"修改失败";
		return "innerInfo";
	}
	
	private String inner;
	private String msg;
	private ModifyInnerInfoService service;
	public String getInner() {
		return inner;
	}
	public void setInner(String inner) {
		this.inner = inner;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public void setService(ModifyInnerInfoService service) {
		this.service = service;
	}

}
