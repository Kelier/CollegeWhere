package com.college.service.impl;

import org.springframework.stereotype.Service;

import com.college.service.I_Login;

@Service
public class LoginService implements I_Login{

	@Override
	public Boolean login(String uname, String upwd) {
		
		return true;
	}

}
