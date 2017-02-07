package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowRegInfoService;
import com.promise.tools.DateTools;
import com.promise.tools.Tools;

public class ShowRegInfoAction {
	public String execute() throws Exception{
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = this.service.queryRegInfoById();
		System.out.println(msg);
		sex = (String) msg.get("SEX");
		//age 
		int ageInt = Tools.getAge(DateTools.stringToDate((String) msg.get("BIRTHDAY")));
		age = String.valueOf(ageInt);
		
		edu = (String) msg.get("EDU");
		 
		nikename = (String) msg.get("NIKENAME");
		account = (String) msg.get("ACCOUNT"); 
		area = (String) msg.get("AREA"); 
		money = (String) msg.get("MONEY"); 
		height = (String) msg.get("HEIGHT");
		
		
		return "regInfo";
	}
	private ShowRegInfoService service;
	private String id = null;
	private Map msg = null;
	private String sex = null;
	private String age = null;
	private String edu = null;
	private String nikename = null;
	private String account = null;
	private String area = null;
	private String money = null;
	private String height = null;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Map getMsg() {
		return msg;
	}
	public void setMsg(Map msg) {
		this.msg = msg;
	}
	public void setService(ShowRegInfoService service) {
		this.service = service;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEdu() {
		return edu;
	}
	public void setEdu(String edu) {
		this.edu = edu;
	}
	public String getNikename() {
		return nikename;
	}
	public void setNikename(String nikename) {
		this.nikename = nikename;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}

}
