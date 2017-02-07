package com.promise.action.userdata;

import java.util.Map;

public class ShowDetailInfoAction {
	
	public String execute() throws Exception{
		return "detailInfo";
	}
	
	private Map msg = null;
	private String name = null;
	private String area = null;
	private String weight = null;
	private String blood = null;
	private String nation = null;
	private String faith = null;
	private String edu_school = null;
	
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
	

}
