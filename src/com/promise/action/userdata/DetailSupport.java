package com.promise.action.userdata;

import java.util.List;

import com.promise.service.ModifyDetailInfoService;
import com.promise.tools.Tools;

public abstract class DetailSupport {
	public abstract String execute() throws Exception;
	
	protected ModifyDetailInfoService service = null;
	protected String name = null;
	protected String area = null;
	protected String weight = null;
	protected String blood = null;
	protected String nation = null;
	protected List ocnation = null;
	protected String faith = null;
	protected String edu_school = null;
	protected String msg = null;
	private void initOptions()throws Exception
	{
		this.ocnation=Tools.getOptions("nation");
	}
	public List getOcnation() {
		return ocnation;
	}
	public void setOcnation(List ocnation) {
		this.ocnation = ocnation;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getBlood() {
		return blood;
	}
	public void setBlood(String blood) {
		this.blood = blood;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getFaith() {
		return faith;
	}
	public void setFaith(String faith) {
		this.faith = faith;
	}
	public String getEdu_school() {
		return edu_school;
	}
	public void setEdu_school(String edu_school) {
		this.edu_school = edu_school;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public void setService(ModifyDetailInfoService service) {
		this.service = service;
	}

}
