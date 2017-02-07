package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyDetailInfoService;
import com.promise.tools.Tools;

/**
 * 详细资料修改页面中的action
 * @author Administrator
 *
 */
public class ModifyDetailInfoAction extends DetailSupport{
	
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = this.service.modifyDetailInfo()?"修改成功":"修改失败";
		return "detailInfo";
	}
}