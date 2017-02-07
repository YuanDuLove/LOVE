package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyLifeInfoService;
import com.promise.tools.Tools;

public class ModifyLifeInfoAction {
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = this.service.modifyLifeInfo()?"修改成功":"修改失败";
		return "lifeInfo";
	}

	
	private ModifyLifeInfoService service;
	private String msg = null;
	private String smoke = null;
	private String drink = null;
	private String car = null;
	private String cooking = null;
	private String housework = null;
	private String deposit = null;
	private String character = null;
	private String house = null;
	
	public String getHouse() {
		return house;
	}
	public void setHouse(String house) {
		this.house = house;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getSmoke() {
		return smoke;
	}
	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}
	public String getDrink() {
		return drink;
	}
	public void setDrink(String drink) {
		this.drink = drink;
	}
	public String getCar() {
		return car;
	}
	public void setCar(String car) {
		this.car = car;
	}
	public String getCooking() {
		return cooking;
	}
	public void setCooking(String cooking) {
		this.cooking = cooking;
	}
	public String getHousework() {
		return housework;
	}
	public void setHousework(String housework) {
		this.housework = housework;
	}
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}
	public String getCharacter() {
		return character;
	}
	public void setCharacter(String character) {
		this.character = character;
	}
	public void setService(ModifyLifeInfoService service) {
		this.service = service;
	}
	
}
