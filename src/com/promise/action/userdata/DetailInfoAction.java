package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowDetailInfoService;
import com.promise.tools.Tools;

public class DetailInfoAction extends DetailSupport {

	@Override
	public String execute() throws Exception {
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		infos = service.queryDetailInfo();
		//NAME=臧晓辉, AREA=山东诸城, WEIGHT=55, BLOOD=4, NATION=01, FAITH=2, EDU_SCHOOL=sdut
		name = (String) infos.get("NAME");
		area = (String) infos.get("AREA");
		weight = (String) infos.get("WEIGHT");
		blood = (String) infos.get("BLOOD");
		nation = (String) infos.get("NATION");
		faith = (String) infos.get("FAITH");
		edu_school = (String) infos.get("EDU_SCHOOL");
		return "detailInfo";
	}
	
	private ShowDetailInfoService service;
	private Map infos = null;
	public void setService(ShowDetailInfoService service) {
		this.service = service;
	}

}
