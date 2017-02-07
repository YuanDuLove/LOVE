package com.promise.test.servlet;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.promise.dao.LogInfoDao;
import com.promise.tools.DateTools;

public class DaoTest {
	private static final ApplicationContext act=new FileSystemXmlApplicationContext("WebRoot/WEB-INF/applicationContext.xml");
	private static final LogInfoDao dao=act.getBean("loginfoDao",LogInfoDao.class);
	public static void main(String[] args) {
		List list;
		try {
			Map dto = new HashMap();
			dto.put("log_num", "m001");
			dto.put("infos", "添加会员信息");
			String dateStr = DateTools.dateToString(new Date());
			dto.put("add_date", dateStr);
			dao.setMapDto(dto);
			dao.addLog();
			
			list = dao.queryAllInfo();
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
