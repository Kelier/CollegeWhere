package com.college.dao;

import java.util.List;

import com.college.beans.UserBean;


public interface I_UserDao {
	
	String userLogin(String mobile,String password);
	int addUser(String mobile,String password);
	Boolean updateUser(String uid,String nickname,String subject,String avatar,String gender,String province,String score);
	Boolean deleteUser(String uid);
	List<UserBean> queryUser(String nickname);
	List<UserBean> findUser();
	
	String adminlogin(String a_name,String a_pass);
	

	//insert
	Boolean insertData(String province,String year,String type,String bath,String score);
	//查询
	List<UserBean> getSingleInfo(String uid);
	//图片路径上传
		Boolean modifyPath(String uid,String fileName);
}
