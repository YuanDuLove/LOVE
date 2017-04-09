package com.promise.action;

import java.util.HashMap;
import java.util.Map;

import com.promise.service.CheckMsgService;

/**
 * 查看消息后消息未读数量减一
 * @author Administrator
 *
 */
public class CheckMsgAction {
	public String execute() throws Exception{
		Map dto = new HashMap();
		dto.put("msgId", msgId);
		this.service.setMapDto(dto);
		this.service.checkMsg();
		return "ok";
	}
	
	private CheckMsgService service;
	private String msgId;
	
	public void setService(CheckMsgService service) {
		this.service = service;
	}

	public String getMsgId() {
		return msgId;
	}

	public void setMsgId(String msgId) {
		this.msgId = msgId;
	}
}
