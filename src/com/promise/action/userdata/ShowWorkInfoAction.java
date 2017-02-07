package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowWorkInfoService;
import com.promise.tools.Tools;

public class ShowWorkInfoAction {

	public String execute() throws Exception {
		Map dto = new HashMap();
		dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryWorkInfo();
		OccupationName = (String) msg.get("JOBTYPE");
		companyType = (String) msg.get("COMPANYTYPE");
		workBusy = (String) msg.get("BUSYDEGREE");
		personality = (String) msg.get("JOBCONDITION");

		return "workInfo";
	}

	private ShowWorkInfoService service;
	private Map msg = null;
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

	public void setService(ShowWorkInfoService service) {
		this.service = service;
	}

}
