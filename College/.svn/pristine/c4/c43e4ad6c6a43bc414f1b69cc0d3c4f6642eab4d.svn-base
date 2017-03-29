package com.college.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.college.beans.UserBean;
import com.college.dao.I_UserDao;
import com.college.service.I_User;
@Service
public class UserService implements I_User{


	@Autowired
	I_UserDao userDao;

	@Override
	public String adminlogin(String a_name, String a_pass) {
		// TODO adminµÇÂ¼
		return userDao.adminlogin(a_name, a_pass);
	}

	@Override
	public String userLogin(String mobile, String password) {
		// TODO Auto-generated method stub
		return userDao.userLogin(mobile, password);
	}

	@Override
	public int addUser(String mobile, String password) {
		// TODO Auto-generated method stub
		return userDao.addUser(mobile, password);
	}

	@Override
	public Boolean updateUser(String uid, String nickname, String subject, String avatar, String gender,
			String province, String score) {
		// TODO Auto-generated method stub
		return userDao.updateUser(uid, nickname, subject, avatar, gender, province, score);
	}

	@Override
	public Boolean deleteUser(String uid) {
		// TODO Auto-generated method stub
		return userDao.deleteUser(uid);
	}

	@Override
	public List<UserBean> queryUser(String nickname) {
		// TODO Auto-generated method stub
		return userDao.queryUser(nickname);
	}

	@Override
	public List<UserBean> findUser() {
		// TODO Auto-generated method stub
		return userDao.findUser();
	}

	@Override
	public Boolean insertData(String province, String year, String type, String bath, String score) {
		// TODO Auto-generated method stub
		return userDao.insertData(province, year, type, bath, score);
	}

	@Override
	public List<UserBean> getSingleInfo(String uid) {
		// TODO Auto-generated method stub
		return userDao.getSingleInfo(uid);
	}


	@Override
	public Boolean modifyPath(String uid, String fileName) {
		// TODO Auto-generated method stub
		return userDao.modifyPath(uid, fileName);
	}
	
}
