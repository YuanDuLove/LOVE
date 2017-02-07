package com.promise.tools;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateTools {
	
	/**
	 * 将时间类型转换为字符串类型
	 * @param date
	 * @return
	 */
	public static String dateToString(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	public static String dateToString2(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHddss");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	
	public static Date stringToDate(String dateStr){
		Date date = null;
		try {
			date = new SimpleDateFormat("yyyy-MM-dd").parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	public static String getYear(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	
	
	public static String getMonth(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("MM");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	
	public static String getDay(Date date){
		SimpleDateFormat sdf = new SimpleDateFormat("dd");
		String dateStr = sdf.format(date);
		return dateStr;
	}
	
	
	public static void main(String[] args) {
		String dateStr = DateTools.dateToString2(new Date());
		System.out.println(dateStr);
	}

}
