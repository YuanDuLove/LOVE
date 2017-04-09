package com.promise.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowMsgsService;

public class ShowMsgAction {
	public String execute() throws Exception{
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		dto.put("type", "msg");
		service.setMapDto(dto);
		infos = service.queryMsgByType();
		System.out.println(infos);
		return "ok";
	}
	
	private String type;
	private List infos;
	private ShowMsgsService service;
	public void setService(ShowMsgsService service) {
		this.service = service;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public List getInfos() {
		return infos;
	}

	public void setInfos(List infos) {
		this.infos = infos;
	}

}
