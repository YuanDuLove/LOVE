package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowInnerInfoService;

public class ShowInnerInfoAction {
	public String execute() throws Exception{
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryInnerInfo();
		inner = (String) msg.get("USERINNER");
		return "innerInfo";
	}
	
	private ShowInnerInfoService service;
	private String inner = null;
	private Map msg = null;
	public void setService(ShowInnerInfoService service) {
		this.service = service;
	}
	public String getInner() {
		return inner;
	}
	public void setInner(String inner) {
		this.inner = inner;
	}

}
