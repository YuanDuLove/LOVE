package com.promise.action;

import java.util.Date;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.promise.service.AddMsgService;
import com.promise.tools.Tools;

public class AddGreetMsgAction {
	public String execute() throws Exception{
		Map dto = Tools.getDto();
		//消息内容
		dto.put("message", "hi~你好，有兴趣么，我们可以聊一下哦~");
		//发送人id
		Map userinfo1 = (Map) ActionContext.getContext().getSession().get("userinfo");
		String sendid = (String) userinfo1.get("ID");
		dto.put("sendID", sendid);
		//消息类型：发邮件：1,约会：2，打招呼：3，委托红娘：4
		dto.put("type", "3");
		//消息标志：已读：1 未读：2 删除：3
		dto.put("flag", "2");
		//发送时间
		dto.put("sendtime", new Date());
		service.setMapDto(dto);
		service.addMsg();
		return "ok";
	}
	
	private AddMsgService service = null;
	private String sendid = null;
	private String receiverid = null;
	private String message = null;
	private String id = null;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setService(AddMsgService service) {
		this.service = service;
	}

	public String getSendid() {
		return sendid;
	}
	public void setSendid(String sendid) {
		this.sendid = sendid;
	}
	public String getReceiverid() {
		return receiverid;
	}
	public void setReceiverid(String receiverid) {
		this.receiverid = receiverid;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}

}
