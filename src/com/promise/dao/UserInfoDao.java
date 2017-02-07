package com.promise.dao;

import java.util.List;
import java.util.Map;

public interface UserInfoDao {
	/**
	 * 给dao传值
	 * @param dto
	 */
	public void setMapDto(Map dto);
	/**
	 * 添加用户信息
	 * @return
	 * @throws Exception
	 */
	public boolean addUser() throws Exception;
	/**
	 * 修改用户择偶条件信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyMateInfo() throws Exception;
	/**
	 * 修改用户注册信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyRegInfo() throws Exception;
	/**
	 * 修改用户内心独白
	 */
	public boolean modifyInnerInfo() throws Exception;
	
	/**
	 * 修改详细信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyDetailInfo() throws Exception;
	
	/**
	 * 修改婚姻观
	 * @return
	 * @throws Exception
	 */
	public boolean modifyMarryView() throws Exception;
	
	/**
	 * 修改家庭情况
	 * @return
	 * @throws Exception
	 */
	public boolean modifyFamilyInfo() throws Exception;
	
	/**
	 * 修改生活状态信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyLifeInfo() throws Exception;

	/**
	 * 登录检测，查询对应的id
	 * @return
	 * @throws Exception
	 */
	public Map loginCheck() throws Exception;
	
	/**
	 * 查询注册信息
	 * @return
	 * @throws Exception
	 */
	public Map queryRegInfo() throws Exception;
	
	/**
	 * 查询择偶条件
	 */
	public Map queryMateInfo() throws Exception;
	
	/**
	 * 查询详细信息
	 * @return
	 * @throws Exception
	 */
	public Map queryDetailInfo() throws Exception;
	
	/**
	 * 查询家庭情况信息
	 * @return
	 * @throws Exception
	 */
	public Map queryFamilyInfo() throws Exception;
	
	/**
	 * 查询内心独白
	 * @return
	 * @throws Exception
	 */
	public Map queryInnerInfo() throws Exception;
	
	/**
	 * 查询生活状态
	 * @return
	 * @throws Exception
	 */
	public Map queryLifeInfo() throws Exception;
	
	/**
	 * 查询婚姻guan
	 */
	public Map queryMarryInfo() throws Exception;
	
	/**
	 * 查询工作状态
	 * @return
	 * @throws Exception
	 */
	public Map queryWorkInfo() throws Exception;
	
	/**
	 * 修改工作情况
	 * @return
	 * @throws Exception
	 */
	public boolean modifyWorkInfo() throws Exception;
	
	/**
	 * 根据id查询用户信息
	 * @return
	 * @throws Exception
	 */
	public Map queryInfoById() throws Exception;
	
	/**
	 * 随机搜索，推荐用户
	 */
	public List queryUserInfoByAss() throws Exception;
	
	/**
	 * 搜索页面中的搜索方法
	 */
	public List queryUserInfo() throws Exception;
	
	/**
	 * 修改用户头像
	 * @return
	 * @throws Exception
	 */
	public boolean modifyUserPhoto() throws Exception;
	
	/**
	 * 查询用户图片
	 * @return
	 * @throws Exception
	 */
	public Map queryUserPhoto() throws Exception;
}
