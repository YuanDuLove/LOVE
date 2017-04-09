package com.promise.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ShowMainPageService;
import com.promise.tools.DateTools;
import com.promise.tools.Tools;

public class ShowMainPageAction {

	public String execute() throws Exception {
		Map dto = new HashMap();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		service.setMapDto(dto);
		msg = service.queryMainPageInfo();
		System.out.println("msg==============="+msg);
		userNikeName = (String) msg.get("NIKENAME");
		
		//查询未读消息
		Map unReadMsgMap = service.queryUnReadMsg();
		unReadMsg = (String) unReadMsgMap.get("COUNT");
		System.out.println("unReadMsg==========="+unReadMsg);
		
		//查询未读通知
		Map unReadNoticeMap = service.queryUnReadNotice();
		unReadNotice = (String) unReadNoticeMap.get("COUNT");

		//查询择偶条件
		area_mate = "潍坊";
		String bage_mate = (String) msg.get("MATE_BAGE");
		String eage_mate = (String) msg.get("MATE_EAGE");
		
		if((bage_mate == null && eage_mate == null)||("".equals(bage_mate)&& "".equals(eage_mate))){
			age_mate = "18-30岁";
		} else if((bage_mate == null && eage_mate != null)||("".equals(bage_mate)&& !"".equals(eage_mate))){
			age_mate = "小于"+eage_mate+"岁";
		} else if((bage_mate != null && eage_mate == null)||(!"".equals(bage_mate)&& "".equals(eage_mate))){
			age_mate = "大于"+bage_mate+"岁";
		} else if((bage_mate != null && eage_mate != null)||(!"".equals(bage_mate)&& !"".equals(eage_mate))){
			age_mate = bage_mate+"-"+eage_mate+"岁";
		}
		
		String bheight_mate = (String) msg.get("MATE_BHEIGHT");
		String eheight_mate = (String) msg.get("MATE_EHEIGHT");
		
		if((bheight_mate == null && eheight_mate == null)||("".equals(bheight_mate)&& "".equals(eheight_mate))){
			height_mate = "160-180cm";
		} else if(bheight_mate == null && eheight_mate != null||("".equals(bheight_mate)&& !"".equals(eheight_mate))){
			height_mate = "低于"+eheight_mate+"cm";
		} else if(bheight_mate != null && eheight_mate == null||(!"".equals(bheight_mate)&& "".equals(eheight_mate))){
			height_mate = "高于"+bheight_mate+"cm";
		} else if(bheight_mate != null && eheight_mate != null||(!"".equals(bheight_mate)&& !"".equals(eheight_mate))){
			height_mate = bheight_mate+"-"+eheight_mate+"cm";
		}
		
		edu_mate = (String) msg.get("MATE_EDU");
		String bmoney_mate = (String) msg.get("MATE_BMONEY");
		String emoney_mate = (String) msg.get("MATE_EMONEY");
		
		if((bmoney_mate.equals("未填写") && emoney_mate.equals("未填写")) || (bmoney_mate.equals("不限") && emoney_mate.equals("不限"))){
			money_mate = "2000-8000元";
		} else if((bmoney_mate.equals("未填写") && !emoney_mate.equals("未填写")) || (bmoney_mate.equals("不限") && !emoney_mate.equals("不限"))){
			money_mate = "低于"+emoney_mate+"元";
		} else if((!bmoney_mate.equals("未填写") && emoney_mate.equals("未填写")) || (!bmoney_mate.equals("不限") && emoney_mate.equals("不限"))){
			money_mate = "高于"+bmoney_mate+"元";
		} else{
			money_mate = bmoney_mate+"-"+emoney_mate+"元";
		}
		
		String mate_sex = (String) msg.get("MATE_SEX");
		if(mate_sex.equals("1")){
			sex_mate = "男性";
			dto.put("mate_sex", "1");
		} else if(mate_sex.equals("2")){
			sex_mate = "女性";
			dto.put("mate_sex", "2");
		} else{
			sex_mate = "不限性别";
			dto.put("mate_sex", "");
		}
		userphotoStr = (String) msg.get("USERPHOTO");
		
		//搜索：推荐用户
		List userinfo = service.queryUserInfoByAss();
		List infoList = new ArrayList();
		System.out.println("--------"+userinfo);
		Map infoMap;
		if(userinfo.size() > 0){
			for(int i = 0;i < userinfo.size();i++){
				if(i >= 6){
					break;
				}
				infoMap = new HashMap();
				infoMap = (Map) userinfo.get(i);
				Date birthday = (Date) infoMap.get("BIRTHDAY");
				int age = Tools.getAge(birthday);
				infoMap.put("AGE", age);
				if(infoMap.get("USERPHOTO") == null || infoMap.get("USERPHOTO").equals("")){
					infoMap.put("USERPHOTO", "man.jpg");
				}
				
				if(infoMap.get("USERINNER") == null || infoMap.get("USERINNER").equals("")){
					infoMap.put("USERINNER", "暂未填写");
				} else if((infoMap.get("USERINNER")).toString().length() > 6){
					String userinner = infoMap.get("USERINNER").toString();
					String userinnerStr = userinner.substring(0,6);
					userinnerStr += "...";
					infoMap.put("USERINNER", userinnerStr);
				}
				infoList.add(infoMap);
			}
			this.infos = infoList;
		}
		System.out.println(infos);

		return "main";
	}
	
	private String nikename =null;
	private String age = null;
	private String area = null;
	private String height = null;
	private String money = null;
	private String inner= null;
	private String id = null;
	private String userphotoStr = null;
	private List infos;
	private String unReadMsg = null;
	private String unReadNotice = null;
	private String userNikeName = null;
	
	
	public String getUserNikeName() {
		return userNikeName;
	}

	public void setUserNikeName(String userNikeName) {
		this.userNikeName = userNikeName;
	}

	public String getUnReadNotice() {
		return unReadNotice;
	}

	public void setUnReadNotice(String unReadNotice) {
		this.unReadNotice = unReadNotice;
	}

	public String getUnReadMsg() {
		return unReadMsg;
	}

	public void setUnReadMsg(String unReadMsg) {
		this.unReadMsg = unReadMsg;
	}

	public void setMsg(Map msg) {
		this.msg = msg;
	}

	public List getInfos() {
		return infos;
	}

	public void setInfos(List infos) {
		this.infos = infos;
	}

	public String getNikename() {
		return nikename;
	}

	public void setNikename(String nikename) {
		this.nikename = nikename;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getInner() {
		return inner;
	}

	public void setInner(String inner) {
		this.inner = inner;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	private Map msg = null;
	private ShowMainPageService service;
	private String message = null;
	private String email = null;
	private String remind = null;
	private String area_mate = null;
	private String age_mate = null;
	private String height_mate = null;
	private String edu_mate = null;
	private String money_mate = null;
	private String sex_mate = null;

	public void setService(ShowMainPageService service) {
		this.service = service;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getRemind() {
		return remind;
	}

	public void setRemind(String remind) {
		this.remind = remind;
	}

	public String getArea_mate() {
		return area_mate;
	}

	public void setArea_mate(String area_mate) {
		this.area_mate = area_mate;
	}

	public String getAge_mate() {
		return age_mate;
	}

	public void setAge_mate(String age_mate) {
		this.age_mate = age_mate;
	}

	public String getHeight_mate() {
		return height_mate;
	}

	public void setHeight_mate(String height_mate) {
		this.height_mate = height_mate;
	}

	public String getEdu_mate() {
		return edu_mate;
	}

	public void setEdu_mate(String edu_mate) {
		this.edu_mate = edu_mate;
	}

	public String getMoney_mate() {
		return money_mate;
	}

	public void setMoney_mate(String money_mate) {
		this.money_mate = money_mate;
	}

	public String getSex_mate() {
		return sex_mate;
	}

	public void setSex_mate(String sex_mate) {
		this.sex_mate = sex_mate;
	}

	public String getUserphotoStr() {
		return userphotoStr;
	}

	public void setUserphotoStr(String userphotoStr) {
		this.userphotoStr = userphotoStr;
	}

}
