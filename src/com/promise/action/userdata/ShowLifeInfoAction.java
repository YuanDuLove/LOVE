package com.promise.action.userdata;

import java.util.HashMap;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowLifeInfoService;

public class ShowLifeInfoAction {

	public String execute() throws Exception {
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryLifeInfo();
		System.out.println(msg);
		smoke = (String) msg.get("SMOKE");
		drink = (String) msg.get("DRINK");
		car = (String) msg.get("CAR");
		cooking = (String) msg.get("COOKING");
		housework = (String) msg.get("HOUSEWORK");
		deposit = (String) msg.get("DEPOSIT");
		character = (String) msg.get("CHARACTER");
		house = (String) msg.get("HOUSE");
		return "lifeInfo";
	}

	private ShowLifeInfoService service;
	private String smoke = null;
	private String drink = null;
	private String car = null;
	private String cooking = null;
	private String housework = null;
	private String deposit = null;
	private String character = null;
	private Map msg = null;
	private String house = null;
	
	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}

	public void setService(ShowLifeInfoService service) {
		this.service = service;
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

}
