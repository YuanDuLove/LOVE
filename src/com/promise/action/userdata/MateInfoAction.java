package com.promise.action.userdata;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.ModifyMateInfoService;
import com.promise.service.impl.ModifyMateInfoServiceImpl;
import com.promise.tools.Tools;

/**
 * 择偶条件修改页面中的action
 * @author Administrator
 */
public class MateInfoAction {
	
	private ModifyMateInfoService service = null;
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String userid = (String) userinfo1.get("ID");
		dto.put("id", userid);
		this.service.setMapDto(dto);
		msg = this.service.modifyMateInfo()?"修改成功":"修改失败";
		return "mateInfo";
	}
	
	private String msg = null;
	private String mate_sex = null;
	private String mate_bage = null;
	private String mate_eage = null;
	private String mate_workarea = null;
	private String mate_nativearea = null;
	private String mate_marry = null;
	private String mate_edu = null;
	private String mate_bmoney = null;
	private String mate_emoney = null;
	private String mate_child = null;
	private String mate_bheight = null;
	private String mate_eheight = null;
	
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public String getMate_sex() {
		return mate_sex;
	}
	public void setMate_sex(String mate_sex) {
		this.mate_sex = mate_sex;
	}
	public String getMate_bage() {
		return mate_bage;
	}
	public void setMate_bage(String mate_bage) {
		this.mate_bage = mate_bage;
	}
	public String getMate_eage() {
		return mate_eage;
	}
	public void setMate_eage(String mate_eage) {
		this.mate_eage = mate_eage;
	}
	public String getMate_marry() {
		return mate_marry;
	}
	public void setMate_marry(String mate_marry) {
		this.mate_marry = mate_marry;
	}
	public String getMate_edu() {
		return mate_edu;
	}
	public void setMate_edu(String mate_edu) {
		this.mate_edu = mate_edu;
	}
	public String getMate_bmoney() {
		return mate_bmoney;
	}
	public void setMate_bmoney(String mate_bmoney) {
		this.mate_bmoney = mate_bmoney;
	}
	public String getMate_emoney() {
		return mate_emoney;
	}
	public void setMate_emoney(String mate_emoney) {
		this.mate_emoney = mate_emoney;
	}
	public String getMate_child() {
		return mate_child;
	}
	public void setMate_child(String mate_child) {
		this.mate_child = mate_child;
	}
	public String getMate_bheight() {
		return mate_bheight;
	}
	public void setMate_bheight(String mate_bheight) {
		this.mate_bheight = mate_bheight;
	}
	public String getMate_eheight() {
		return mate_eheight;
	}
	public void setMate_eheight(String mate_eheight) {
		this.mate_eheight = mate_eheight;
	}
	
	public String getMate_workarea() {
		return mate_workarea;
	}
	public void setMate_workarea(String mate_workarea) {
		this.mate_workarea = mate_workarea;
	}
	public String getMate_nativearea() {
		return mate_nativearea;
	}
	public void setMate_nativearea(String mate_nativearea) {
		this.mate_nativearea = mate_nativearea;
	}
	public void setService(ModifyMateInfoServiceImpl service) {
		this.service = service;
	}
	
	

}
