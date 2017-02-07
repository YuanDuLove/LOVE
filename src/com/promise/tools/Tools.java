package com.promise.tools;

import java.math.BigDecimal;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.opensymphony.xwork2.ActionContext;
import com.promise.tools.db.DBTools;

public class Tools {
	
		private final static int MATCH_SCALE=2;         //四舍五入默认小数位数
		private final static int[] dayArr = new int[] { 20, 19, 21, 20, 21, 22, 23, 23, 23, 24, 23, 22 };  
		private final static String[] constellationArr = new String[] { "摩羯座", "水瓶座", "双鱼座", "白羊座", "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "摩羯座" };  
		  
		public static void main(String[] args)
		{
			try
			{
				//模拟tomcat启动时候,自动加载Spring
				new FileSystemXmlApplicationContext("E:/allproject/YuanDuLove/YuanDuLove/WebRoot/WEB-INF/applicationContext.xml");
				//List ocnation=Tools.getOptions("nation", "0");
				System.out.println(Tools.ageToDate("24"));
				
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			
		}
		
		//求生肖
		public static String getZodiac(Integer year){
			if(year<1900){
				return "未知";
			}
			Integer start=1900;
			String [] years=new String[]{
					"鼠","牛","虎","兔",
					"龙","蛇","马","羊",
					"猴","鸡","狗","猪"
					};
			return years[(year-start)%years.length];
		}
		
		//求星座
		public static String getConstellation(int month, int day) {
			return day < dayArr[month - 1] ? constellationArr[month - 1]
					: constellationArr[month];
		}
		
		//求年龄
		public static int getAge(Date dateStr){
			int age = 0;
			Date now = new Date();
			
			SimpleDateFormat format_y = new SimpleDateFormat("yyyy");
			SimpleDateFormat format_M = new SimpleDateFormat("MM");
			
			String birth_year = format_y.format(dateStr);
			String this_year = format_y.format(now);
			
			String birth_month = format_M.format(dateStr);
			String this_month= format_M.format(now);
			
			//初步估算
			age = Integer.parseInt(this_year) - Integer.parseInt(birth_year);
			//如果未到出生月份，则age-1
			if(this_month.compareTo(birth_month) < 0){
				age -= 1;
			}
			if(age < 0){
				age = 0;
			}
			
			return age;
		}
		
		//根据年龄求出生日期
		public static Date ageToDate(String age){
			Date nowDate = new Date();
			SimpleDateFormat sdfYear = new SimpleDateFormat("yyyy");
			String nowYearStr = sdfYear.format(nowDate);
			SimpleDateFormat sdfMon = new SimpleDateFormat("MM");
			String nowMonStr = sdfMon.format(nowDate);
			SimpleDateFormat sdfDay = new SimpleDateFormat("dd");
			String nowDayStr = sdfDay.format(nowDate);
			String birthdayYear = String.valueOf((Integer.parseInt(nowYearStr) - Integer.parseInt(age)));
			String nowDateStr = birthdayYear+"-"+nowMonStr+"-"+nowDayStr;
			//System.out.println(nowDateStr);
			return DateTools.stringToDate(nowDateStr);
		}
		
		public static List getOptions(String fname)throws Exception
		{
			return Tools.getOptions(fname, "0");
		}
		
		public static List getOptions(String fname,String pfcode)throws Exception
		{
			return DBTools.opt.getOptions(fname, pfcode);
		}
		
		/**
		 * 以下四个方法为精度转换方法
		 * @param dol double
		 * @param scale int
		 * @return String
		 */
		public static double ObjToDouble(Object dol, int scale)
		{
			  return Tools.ObjectToBigDecimal(dol, scale).doubleValue();
		}
		public static double ObjToDouble(Object dol)
		{
		   return Tools.ObjToDouble(dol, MATCH_SCALE);	
		}
		
		public static String DoubleToStr(double dol, int scale)
		{
		    return Tools.ObjectToBigDecimal(dol, scale).toString();
		}
		public static String DoubleToStr(double dol)
		{
		    return Tools.DoubleToStr(dol, MATCH_SCALE);
		}

		public static double DoubleToDouble(double dol, int scale)
		{
		    return Tools.ObjectToBigDecimal(dol, scale).doubleValue();
		}
		public static double DoubleToDouble(double dol)
		{
		    return Tools.DoubleToDouble(dol,  MATCH_SCALE);
		}

		public static double StrToDouble(String dol, int scale)
		{
		    return Tools.ObjectToBigDecimal(dol, scale).doubleValue();
		}
		public static double StrToDouble(String dol)
		{
		    return Tools.StrToDouble(dol, MATCH_SCALE);
		}
		public static String StrToStr(String dol, int scale)
		{
		   return Tools.ObjectToBigDecimal(dol, scale).toString();
		}
		public static String StrToStr(String dol)
		{
		  return Tools.StrToStr(dol,MATCH_SCALE);
		}

		private static BigDecimal ObjectToBigDecimal(Object dol,int scale)
		{
			BigDecimal decimal=null;   //货币类型
			if(dol==null || dol.equals(""))
			{
				return new BigDecimal(0);
			}
			decimal = new BigDecimal(dol.toString());
			decimal = decimal.setScale(scale, BigDecimal.ROUND_HALF_UP);
			return decimal;
		}


		//******************BEGIN  MD5******************	  
		
		public final  static String getMd5(Object pwd)throws Exception
		{
			String md51=Tools.MD5Encode(pwd);
			String pwd2=md51+"漿糊號傑@#$%测试数据^&*"+md51;
			String md52=Tools.MD5Encode(pwd2);
			return md52;
		} 
		
		 private final static String[] hexDigits = {
		     "0", "1", "2", "3", "4", "5", "6", "7",
		     "8", "9", "a", "b", "c", "d", "e", "f"};

		  /**
		   * 转换字节数组为16进制字串
		   * @param b 字节数组
		   * @return 16进制字串
		   */
		  private static String byteArrayToHexString(byte[] b)
		  {
		      StringBuffer resultSb = new StringBuffer();
		      for (int i = 0; i < b.length; i++)
		      {
		         resultSb.append(byteToHexString(b[i]));
		      }
		      return resultSb.toString();
		  }
		  /**
		   * 转换字节为16进制字符串
		   * @param b byte
		   * @return String
		   */
		  private static String byteToHexString(byte b)
		  {
		      int n = b;
		      if (n < 0)
		         n = 256 + n;
		      int d1 = n / 16;
		      int d2 = n % 16;
		      return hexDigits[d1] + hexDigits[d2];
		  }
		  /**
		   * 得到MD5的秘文密码
		   * @param origin String
		   * @throws Exception
		   * @return String
		   */
		  private static String MD5Encode(Object origin) throws Exception
		  {
		       String resultString = null;
		       try
		       {
		           resultString=new String(origin.toString());
		           MessageDigest md = MessageDigest.getInstance("MD5");
		           resultString=byteArrayToHexString(md.digest(resultString.getBytes()));
		           return resultString;
		       }
		       catch (Exception ex)
		       {
		          throw ex;
		       }
		  }	
		//******************END  MD5******************	  
		
		public static  Map getDto()
		{
			ActionContext act=ActionContext.getContext();
			
			Map tem=act.getParameters();
			Set<Map.Entry<String, String[]>> entrySet=tem.entrySet();
			Map dto=new HashMap();
			String val[]=null;
			for(Map.Entry<String, String[]> entry:entrySet)
			{
				val=entry.getValue();
				//System.out.println(entry.getKey()+"="+val.length);
				if(val.length==1)
				{
					dto.put(entry.getKey(), val[0]);
				}
				else
				{
					dto.put(entry.getKey(), val);
				}	
			}
	        return dto;
		}
	
}
