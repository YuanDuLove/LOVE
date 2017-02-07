package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyWorkInfoService;
import com.promise.service.ShowWorkInfoService;
import com.promise.tools.Tools;

public class ModifyWorkInfoAction {
	
	public String execute() throws Exception {
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.modifyWorkInfo()?"修改成功":"修改失败";
		return "workInfo";
	}
	
	private ModifyWorkInfoService service;
	private String msg = null;
	private String OccupationName = null;
	private String companyType = null;
	private String workBusy = null;
	private String personality = null;

	public String getOccupationName() {
		return OccupationName;
	}

	public void setOccupationName(String occupationName) {
		OccupationName = occupationName;
	}

	public String getCompanyType() {
		return companyType;
	}

	public void setCompanyType(String companyType) {
		this.companyType = companyType;
	}

	public String getWorkBusy() {
		return workBusy;
	}

	public void setWorkBusy(String workBusy) {
		this.workBusy = workBusy;
	}

	public String getPersonality() {
		return personality;
	}

	public void setPersonality(String personality) {
		this.personality = personality;
	}

	public void setService(ModifyWorkInfoService service) {
		this.service = service;
	}

}
