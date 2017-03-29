package com.college.dao.impl;

import java.util.List;
import java.util.UUID;

import org.springframework.stereotype.Repository;

import com.college.beans.UserBean;
import com.college.dao.I_UserDao;
import com.college.mapper.I_Mapper;
import com.college.utils.Const;
import com.college.utils.MyBatisUtils;
@Repository
public class UserDao implements I_UserDao{
	I_Mapper dao= (I_Mapper) MyBatisUtils.getMapper("I_Mapper");
	
//	test-----------------------------------
//	public List<User> findAllUser(){
//		I_UserDao us=(I_UserDao) MyBatisUtils.getMapper("I_User");
//		List<User> list=us.findAllUser();
//		for (User user : list) {
//			System.out.println(user.getUname()+","+user.getUpwd());
//		}
//		return list;
//	}
	


	@Override
	public String adminlogin(String a_name, String a_pass) {
		if(a_name!=null&&a_pass!=null&&dao!=null){
			Boolean res=dao.adminlogin(a_name,a_pass);
			if(res!=null){
				System.out.println(res);
				return "success";
			}else{
				Boolean userexist=dao.checkexist(a_name);
				if(userexist==null)
				return "nouser";
				else return "errorpass";
			}
			
		}
		
		return "fail";
	}

@Override
public String userLogin(String mobile, String password) {
	if(mobile!=null&&password!=null&&dao!=null){
		String res=dao.userLogin(mobile,password);
		if(res!=null){
			String res2=dao.userNick(res);
			System.out.println(res+","+res2);
			return res+","+res2;
		}
		System.out.println("没有此用户");
	}
	return null;

}

@Override
public int addUser(String mobile, String password) {
	String uid=UUID.randomUUID().toString();
	String nickname="用户"+String.valueOf((int)(Math.random()*10000));
	System.err.println(nickname);
	System.out.println(uid);
	while(dao.checkUid(uid)!=null){
		System.out.println("遇到重复的uid");
		uid=UUID.randomUUID().toString();
	}
	System.out.println("检查手机号");
	if(dao.checkUser(mobile)==null){
		System.out.println("插入用户");
	if(dao.addUser(uid, mobile, password,nickname))return Const.REGISTER_SUCCESS;
	else return Const.REGISTER_FAIL ;
	}
	return Const.USER_EXIST;
}

@Override
public Boolean updateUser(String uid, String nickname, String subject, String avatar, String gender, String province,
		String score) {
	System.out.println(nickname);
	Boolean state=dao.updateUser(uid, nickname, subject, avatar, gender, province, score);
	return state;
}

@Override
public Boolean deleteUser(String uid) {
	Boolean state=dao.deleteUser(uid);
	
	return state;
}

@Override
public List<UserBean> queryUser(String nickname) {
	
	nickname="%"+nickname+"%";
	System.out.println(nickname);
	List<UserBean> list=dao.queryUser(nickname);
	return list;
}

@Override
public List<UserBean> findUser() {
	List<UserBean> list=dao.findUser();
	return list;
}

@Override
public Boolean insertData(String province, String year, String type, String bath, String score) {
	Boolean state=dao.insertData(province, year, type, bath, score);
	return state;
}

@Override
public List<UserBean> getSingleInfo(String uid) {
	List<UserBean> list=dao.getSingleInfo(uid);
	return list;
}

@Override
public Boolean modifyPath(String uid, String fileName) {
	Boolean state=dao.modifyPath(uid, fileName);
	return state;
}
	
	
}
