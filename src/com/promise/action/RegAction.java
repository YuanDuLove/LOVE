package com.promise.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.RegService;
import com.promise.tools.Tools;

public class RegAction {
	
	public String execute () throws Exception{
		Map dto = Tools.getDto();
		dto.put("password", dto.get("pwd"));
		this.service.setMapDto(dto);
		this.service.addUser();
		msg = service.queryUserInfo();
		System.out.println(msg);
		//id,nikename,name,account
		ActionContext.getContext().getSession().put("userinfo",msg);
		
		return "reg";
	}
	
	private RegService service;
	public void setService(RegService service) {
		this.service = service;
	}
	private Map msg = null;
	private String account = null;
	private String pwd = null;
	private String username = null;
	private String nikename = null;
	private String sex = null;
	private String height = null;
	private String educational = null;
	private String money = null;
	private String marryStatus = null;
	private String birthday = null;
	private String area = null;
	
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNikename() {
		return nikename;
	}
	public void setNikename(String nikename) {
		this.nikename = nikename;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getEducational() {
		return educational;
	}
	public void setEducational(String educational) {
		this.educational = educational;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getMarryStatus() {
		return marryStatus;
	}
	public void setMarryStatus(String marryStatus) {
		this.marryStatus = marryStatus;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
//	private RegService services;
//	private String log_num;
//	private String infos;
//	private String add_date;
//	private String msg;
//	
//	public String execute() throws Exception{
//		//Map dto = Tools.getDto();
//		Map dto = new HashMap();
//		dto.put("log_num", "t001");
//		dto.put("infos", "测试spring与struts2整合");
//		dto.put("add_date",DateTools.dateToString(new Date()));
//		services.setMapDto(dto);
//		msg=services.addLog()?"日志添加成功":"日志添加失败";
//		return "reg";
//	}
//	
//	
//	public String getMsg() {
//		return msg;
//	}
//
//
//	public void setMsg(String msg) {
//		this.msg = msg;
//	}
//
//
//	public String getLog_num() {
//		return log_num;
//	}
//	public void setLog_num(String log_num) {
//		this.log_num = log_num;
//	}
//	public String getInfos() {
//		return infos;
//	}
//	public void setInfos(String infos) {
//		this.infos = infos;
//	}
//	public String getAdd_date() {
//		return add_date;
//	}
//	public void setAdd_date(String add_date) {
//		this.add_date = add_date;
//	}
//	public void setServices(RegServicesImpl services) {
//		this.services = services;
//	}
}
