package com.promise.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.LoginService;
import com.promise.tools.Tools;

public class LoginAction {
	
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		this.service.setMapDto(dto);
		Map userinfos = service.loginCheck();
		System.out.println("userinfos============="+userinfos);
		if(userinfos == null){
			msg = "登录失败";
			return "login";
		} else{
			msg = "登录成功";
			ActionContext.getContext().getSession().put("userinfo",userinfos);
			return "home";
		}
	}
	
	private LoginService service;
	private String account = null;
	private String password = null;
	private String msg = null;
	
	public void setService(LoginService service) {
		this.service = service;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}

}
