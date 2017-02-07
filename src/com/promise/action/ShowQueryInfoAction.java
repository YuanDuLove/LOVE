package com.promise.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowQueryInfoService;
import com.promise.tools.Tools;

/**
 * 搜索页面
 * @author Administrator
 *
 */
public class ShowQueryInfoAction {
	
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		List userinfo = service.queryUserInfo();
		List infoList = new ArrayList();
		Map infoMap;
		if(userinfo.size() > 0){
			for(int i = 0;i < userinfo.size();i++){
				infoMap = new HashMap();
				infoMap = (Map) userinfo.get(i);
				Date birthday = (Date) infoMap.get("BIRTHDAY");
				String age = Tools.getAge(birthday)+"岁";
				infoMap.put("AGE", age);
				if(infoMap.get("USERPHOTO") == null){
					infoMap.put("USERPHOTO", "man.jpg");
				}
				infoList.add(infoMap);
			}
			this.infos = infoList;
		}
		
		return "main";
	}
	
	
	private ShowQueryInfoService service;
	public void setService(ShowQueryInfoService service) {
		this.service = service;
	}

	private List infos = null;
	private String sex = null;
	private String bage = null;
	private String eage = null;
	private String marry = null;
	private String bheight = null;
	private String eheight = null;
	public List getInfos() {
		return infos;
	}
	public void setInfos(List infos) {
		this.infos = infos;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBage() {
		return bage;
	}
	public void setBage(String bage) {
		this.bage = bage;
	}
	public String getEage() {
		return eage;
	}
	public void setEage(String eage) {
		this.eage = eage;
	}
	public String getMarry() {
		return marry;
	}
	public void setMarry(String marry) {
		this.marry = marry;
	}
	public String getBheight() {
		return bheight;
	}
	public void setBheight(String bheight) {
		this.bheight = bheight;
	}
	public String getEheight() {
		return eheight;
	}
	public void setEheight(String eheight) {
		this.eheight = eheight;
	}
	

}
