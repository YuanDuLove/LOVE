package com.promise.action;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import com.promise.service.ShowMemInfoService;
import com.promise.tools.DateTools;
import com.promise.tools.Tools;

public class ShowMemberInfoAction {

	public String execute() throws Exception {
		Map dto = new HashMap();
		dto.put("id", id);
		service.setMapDto(dto);
		msg = service.queryMemInfo();
		System.out.println(msg);
		nickname = (String) msg.get("NIKENAME");
		String birthday = (String) msg.get("BIRTHDAY");
		System.out.println(birthday);
		age = String.valueOf(Tools.getAge(DateTools.stringToDate(birthday)))+"岁";
		height = (String) msg.get("HEIGHT")+"cm";
		money = (String) msg.get("MONEY")+"元";
		marry = (String) msg.get("MARRYSTATUS");
		edu = (String) msg.get("EDU");
		work_area = (String) msg.get("AREA");
		nativeplace = (String) msg.get("AREA");
		job = (String) msg.get("JOBTYPE");
		if(job == null || job.equals("")){
			job = "未填写";
		}
		inner = (String) msg.get("USERINNER");
		sex = (String)msg.get("SEX");
		weight = (String) msg.get("WEIGHT");
		if(weight == null || "".equals(weight) || weight == ""){
			weight = "未填写";
		} else{
			weight += "kg";
		}
		nation = (String) msg.get("NATION");
		faith = (String) msg.get("FAITH");
		blood = (String) msg.get("BLOOD");
		company = (String) msg.get("COMPANYTYPE");
		house = (String) msg.get("HOME");
		String carStr = (String) msg.get("CAR");
		System.out.println(carStr);
		if("1".equals(carStr)){
			car = "未填写";
		} else if("2".equals(carStr)){
			car = "已买车";
		} else if("3".equals(carStr)){
			car = "未买车";
		} else{
			car = "未填写";
		}
		String smokeStr = (String) msg.get("SMOKE");
		if(smokeStr == null || "".equals(smokeStr)||"1".equals(smokeStr)){
			smoke = "未填写";
		} else if("2".equals(smokeStr)){
			smoke = "不吸烟";
		} else if("3".equals(smokeStr)){
			smoke = "稍微抽一点";
		} else if("4".equals(smokeStr)){
			smoke = "只在社交场合抽";
		} else if("5".equals(smokeStr)){
			smoke = "抽的很多";
		}
		
		
		String drinkStr = (String) msg.get("DRINK");
		if(drinkStr == null || "".equals(drinkStr)||"1".equals(drinkStr)){
			drink = "未填写";
		} else if("2".equals(drinkStr)){
			drink = "不喝酒";
		} else if("3".equals(drinkStr)){
			drink = "稍微喝一点";
		} else if("4".equals(drinkStr)){
			drink = "只在社交场合喝";
		} else if("5".equals(drinkStr)){
			drink = "喝的很多";
		}
		
		
		String cookingStr = (String) msg.get("COOKING");
		if(cookingStr == null || "".equals(cookingStr)||"1".equals(cookingStr)){
			cooking = "未填写";
		} else if("2".equals(cookingStr)){
			cooking = "色香味俱全";
		} else if("3".equals(cookingStr)){
			cooking = "能做几样可口小菜";
		} else if("4".equals(cookingStr)){
			cooking = "有待提高";
		} 
		
		
		String houseworkStr = (String) msg.get("HOUSEWORK");
		if(houseworkStr == null || "".equals(houseworkStr)||"1".equals(houseworkStr)){
			housework = "未填写";
		} else if("2".equals(houseworkStr)){
			housework = "愿承担大部分家务";
		} else if("3".equals(houseworkStr)){
			housework = "希望对方承担大部分家务";
		} else if("4".equals(houseworkStr)){
			housework = "看各自先忙，协商承担家务";
		} 
		
		String marrydateStr = (String) msg.get("MARRYDATE");
		if(marrydateStr == null || "".equals(marrydateStr)||"1".equals(marrydateStr)){
			marrydate = "未填写";
		} else if("2".equals(marrydateStr)){
			marrydate = "认同闪婚";
		} else if("3".equals(marrydateStr)){
			marrydate = "一年内";
		} else if("4".equals(marrydateStr)){
			marrydate = "两年内";
		} else if("5".equals(marrydateStr)){
			marrydate = "三年内";
		} else if("6".equals(marrydateStr)){
			marrydate = "时机成熟就结婚";
		} 
		
		
		
		String parentStr = (String) msg.get("PARENT");
		if(parentStr == null || "".equals(parentStr)||parentStr.equals("1")){
			parent = "未填写";
		} else if(parentStr.equals("2")){
			parent = "与父母同住";
		} else if(parentStr.equals("3")){
			parent = "不与父母同住";
		} else if(parentStr.equals("4")){
			parent = "尊重伴侣意见";
		} else if(parentStr.equals("5")){
			parent = "视情况而定";
		} 
		
		
		String otherparentStr = (String) msg.get("OTHERPARENT");
		if(otherparentStr == null || "".equals(otherparentStr)||otherparentStr.equals("1")){
			otherparent = "未填写";
		} else if(otherparentStr.equals("2")){
			otherparent = "愿意";
		} else if(otherparentStr.equals("3")){
			otherparent = "不愿意";
		} else if(otherparentStr.equals("4")){
			otherparent = "视情况而定";
		} 
		
		
		dating = (String) msg.get("DATING");
		sex_other = (String) msg.get("MATE_SEX");
		String bage_other = (String) msg.get("MATE_BAGE");
		String eage_other = (String) msg.get("MATE_EAGE");
		System.out.println("2222222222"+bage_other);
		if((bage_other == null && eage_other == null) || ("".equals(bage_other) && "".equals(eage_other))){
			age_other = "未填写";
		} else if((bage_other == null && eage_other != null) || ("".equals(bage_other) && !"".equals(eage_other))){
			age_other = "小于"+eage_other+"岁";
		} else if((bage_other != null && eage_other == null) || (!"".equals(bage_other) && "".equals(eage_other))){
			age_other = "大于"+bage_other+"岁";
		} else if((bage_other != null && eage_other != null) || (!"".equals(bage_other) && !"".equals(eage_other))){
			age_other = bage_other+"-"+eage_other+"岁";
		}
		
		String bheight_other = (String) msg.get("MATE_BHEIGHT");
		String eheight_other = (String) msg.get("MATE_EHEIGHT");
		if((bheight_other == null && eheight_other == null) || ("".equals(bheight_other) && "".equals(eheight_other))){
			height_other = "未填写";
		} else if((bheight_other == null && eheight_other != null) || ("".equals(bheight_other) && !"".equals(eheight_other))){
			height_other = "低于"+eheight_other+"cm";
		} else if(bheight_other != null && eheight_other == null || (!"".equals(bheight_other) && "".equals(eheight_other))){
			height_other = "高于"+bheight_other+"cm";
		} else if(bheight_other != null && eheight_other != null || (!"".equals(bheight_other) && !"".equals(eheight_other))){
			height_other = bheight_other+"-"+eheight_other+"cm";
		}
		
		edu_other = (String) msg.get("MATE_EDU");
		String bmoney_other = (String) msg.get("MATE_BMONEY");
		String emoney_other = (String) msg.get("MATE_EMONEY");
		
		if((bmoney_other.equals("未填写") && emoney_other.equals("未填写")) || (bmoney_other.equals("不限") && emoney_other.equals("不限"))){
			money_other = "2000-8000元";
		} else if((bmoney_other.equals("未填写") && !emoney_other.equals("未填写")) || (bmoney_other.equals("不限") && !emoney_other.equals("不限"))){
			money_other = "低于"+emoney_other+"元";
		} else if((!bmoney_other.equals("未填写") && emoney_other.equals("未填写")) || (!bmoney_other.equals("不限") && emoney_other.equals("不限"))){
			money_other = "高于"+bmoney_other+"元";
		} else if((!bmoney_other.equals("未填写") && !emoney_other.equals("未填写")) || (!bmoney_other.equals("不限") && !emoney_other.equals("不限"))){
			money_other = bmoney_other+"-"+emoney_other+"元";
		}
		
		workarea_other = (String) msg.get("MATE_AREA");
		marry_other = (String) msg.get("MATE_MARRYSTATUS");
		workarea_other = (String) msg.get("MATE_AREA");
		String havechild_otherStr = (String) msg.get("MATE_CHILD");
		if(havechild_otherStr == null || "".equals(havechild_otherStr) || havechild_otherStr.equals("1")){
			havechild_other = "不限";
		} else if(havechild_otherStr.equals("2")){
			havechild_other = "没有";
		} else if(havechild_otherStr.equals("3")){
			havechild_other = "有，住在一起";
		} else if(havechild_otherStr.equals("4")){
			havechild_other = "有，偶尔住一起";
		} else if(havechild_otherStr.equals("5")){
			havechild_other = "有，不住一起";
		} 
		
		String houseStr = (String) msg.get("HOUSE");
		if(houseStr == null || "".equals(houseStr) || houseStr.equals("1")){
			house = "未填写";
		} else if(houseStr.equals("2")){
			house = "已买房";
		} else if(houseStr.equals("3")){
			house = "租房";
		} 
		
		
		userphoto = (String)msg.get("USERPHOTO");
		constellation = Tools.getConstellation(Integer.valueOf(DateTools.getMonth(DateTools.stringToDate(birthday))), Integer.valueOf(DateTools.getDay(DateTools.stringToDate(birthday))));
		zodiac = Tools.getZodiac(Integer.valueOf(DateTools.getYear(DateTools.stringToDate(birthday))));
		
		return "memInfo";
	}

	private ShowMemInfoService service;

	public void setService(ShowMemInfoService service) {
		this.service = service;
	}

	private String id= null;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	private String userphoto = null;
	private Map msg = null;
	private String nickname = null;
	private String age = null;
	private String money = null;
	private String marry = null;
	private String edu = null;
	private String work_area = null;
	private String job = null;
	private String nativeplace = null;
	private String inner = null;
	private String sex = null;
	private String zodiac = null;
	private String height = null;
	private String constellation = null;
	private String weight = null;
	private String blood = null;
	private String body = null;
	private String nation = null;
	private String company = null;
	private String faith = null;
	private String house = null;
	private String marrydate = null;
	private String car = null;
	private String parent = null;
	private String smoke = null;
	private String otherparent = null;
	private String drink = null;
	private String xiaofei = null;
	private String cooking = null;
	private String dating = null;
	private String housework = null;
	private String sex_other = null;
	private String body_other = null;
	private String age_other = null;
	private String job_other = null;
	private String height_other = null;
	private String smoke_other = null;
	private String edu_other = null;
	private String drink_other = null;
	private String money_other = null;
	private String havechild_other = null;
	private String marry_other = null;
	private String getchild_other = null;
	private String workarea_other = null;
	private String photo_other = null;
	private String likeactivity = null;
	private String likefood = null;
	private String likesport = null;
	private String likearea = null;
	private String likemusic = null;
	private String likeanimal = null;
	private String likeTV = null;

	public String getUserphoto() {
		return userphoto;
	}

	public void setUserphoto(String userphoto) {
		this.userphoto = userphoto;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getMoney() {
		return money;
	}

	public void setMoney(String money) {
		this.money = money;
	}

	public String getMarry() {
		return marry;
	}

	public void setMarry(String marry) {
		this.marry = marry;
	}

	public String getEdu() {
		return edu;
	}

	public void setEdu(String edu) {
		this.edu = edu;
	}

	public String getWork_area() {
		return work_area;
	}

	public void setWork_area(String work_area) {
		this.work_area = work_area;
	}

	public String getJob() {
		return job;
	}

	public void setJob(String job) {
		this.job = job;
	}

	public String getNativeplace() {
		return nativeplace;
	}

	public void setNativeplace(String nativeplace) {
		this.nativeplace = nativeplace;
	}

	public String getInner() {
		return inner;
	}

	public void setInner(String inner) {
		this.inner = inner;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getZodiac() {
		return zodiac;
	}

	public void setZodiac(String zodiac) {
		this.zodiac = zodiac;
	}

	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}

	public String getConstellation() {
		return constellation;
	}

	public void setConstellation(String constellation) {
		this.constellation = constellation;
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

	public String getBody() {
		return body;
	}

	public void setBody(String body) {
		this.body = body;
	}

	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getFaith() {
		return faith;
	}

	public void setFaith(String faith) {
		this.faith = faith;
	}

	public String getHouse() {
		return house;
	}

	public void setHouse(String house) {
		this.house = house;
	}

	public String getMarrydate() {
		return marrydate;
	}

	public void setMarrydate(String marrydate) {
		this.marrydate = marrydate;
	}

	public String getCar() {
		return car;
	}

	public void setCar(String car) {
		this.car = car;
	}

	public String getParent() {
		return parent;
	}

	public void setParent(String parent) {
		this.parent = parent;
	}

	public String getSmoke() {
		return smoke;
	}

	public void setSmoke(String smoke) {
		this.smoke = smoke;
	}

	public String getOtherparent() {
		return otherparent;
	}

	public void setOtherparent(String otherparent) {
		this.otherparent = otherparent;
	}

	public String getDrink() {
		return drink;
	}

	public void setDrink(String drink) {
		this.drink = drink;
	}

	public String getXiaofei() {
		return xiaofei;
	}

	public void setXiaofei(String xiaofei) {
		this.xiaofei = xiaofei;
	}

	public String getCooking() {
		return cooking;
	}

	public void setCooking(String cooking) {
		this.cooking = cooking;
	}

	public String getDating() {
		return dating;
	}

	public void setDating(String dating) {
		this.dating = dating;
	}

	public String getHousework() {
		return housework;
	}

	public void setHousework(String housework) {
		this.housework = housework;
	}

	public String getSex_other() {
		return sex_other;
	}

	public void setSex_other(String sex_other) {
		this.sex_other = sex_other;
	}

	public String getBody_other() {
		return body_other;
	}

	public void setBody_other(String body_other) {
		this.body_other = body_other;
	}

	public String getAge_other() {
		return age_other;
	}

	public void setAge_other(String age_other) {
		this.age_other = age_other;
	}

	public String getJob_other() {
		return job_other;
	}

	public void setJob_other(String job_other) {
		this.job_other = job_other;
	}

	public String getHeight_other() {
		return height_other;
	}

	public void setHeight_other(String height_other) {
		this.height_other = height_other;
	}

	public String getSmoke_other() {
		return smoke_other;
	}

	public void setSmoke_other(String smoke_other) {
		this.smoke_other = smoke_other;
	}

	public String getEdu_other() {
		return edu_other;
	}

	public void setEdu_other(String edu_other) {
		this.edu_other = edu_other;
	}

	public String getDrink_other() {
		return drink_other;
	}

	public void setDrink_other(String drink_other) {
		this.drink_other = drink_other;
	}

	public String getMoney_other() {
		return money_other;
	}

	public void setMoney_other(String money_other) {
		this.money_other = money_other;
	}

	public String getHavechild_other() {
		return havechild_other;
	}

	public void setHavechild_other(String havechild_other) {
		this.havechild_other = havechild_other;
	}

	public String getMarry_other() {
		return marry_other;
	}

	public void setMarry_other(String marry_other) {
		this.marry_other = marry_other;
	}

	public String getGetchild_other() {
		return getchild_other;
	}

	public void setGetchild_other(String getchild_other) {
		this.getchild_other = getchild_other;
	}

	public String getWorkarea_other() {
		return workarea_other;
	}

	public void setWorkarea_other(String workarea_other) {
		this.workarea_other = workarea_other;
	}

	public String getPhoto_other() {
		return photo_other;
	}

	public void setPhoto_other(String photo_other) {
		this.photo_other = photo_other;
	}

	public String getLikeactivity() {
		return likeactivity;
	}

	public void setLikeactivity(String likeactivity) {
		this.likeactivity = likeactivity;
	}

	public String getLikefood() {
		return likefood;
	}

	public void setLikefood(String likefood) {
		this.likefood = likefood;
	}

	public String getLikesport() {
		return likesport;
	}

	public void setLikesport(String likesport) {
		this.likesport = likesport;
	}

	public String getLikearea() {
		return likearea;
	}

	public void setLikearea(String likearea) {
		this.likearea = likearea;
	}

	public String getLikemusic() {
		return likemusic;
	}

	public void setLikemusic(String likemusic) {
		this.likemusic = likemusic;
	}

	public String getLikeanimal() {
		return likeanimal;
	}

	public void setLikeanimal(String likeanimal) {
		this.likeanimal = likeanimal;
	}

	public String getLikeTV() {
		return likeTV;
	}

	public void setLikeTV(String likeTV) {
		this.likeTV = likeTV;
	}

}
