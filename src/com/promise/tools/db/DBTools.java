package com.promise.tools.db;

/**
 * 静态依赖注入的实现
 * @author Administrator
 *
 */

public class DBTools
{
   public static DBOptions opt=null;

   public void setOpt(DBOptions opt)
   {
	  DBTools.opt = opt;
   }
}
