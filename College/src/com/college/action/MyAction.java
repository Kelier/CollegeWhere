package com.college.action;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;


import com.opensymphony.xwork2.ActionSupport;

@ParentPackage("struts-default")
@Namespace("/")
public class MyAction extends ActionSupport {
	@Autowired
//	AddBean addBean;
    int num1;
    int num2;
    double result;
public double getResult() {
		return result;
	}
public int getNum1() {
		return num1;
	}
	public void setNum1(int num1) {
		this.num1 = num1;
	}
	public int getNum2() {
		return num2;
	}
	public void setNum2(int num2) {
		this.num2 = num2;
	}
@Action(value="plus",
results={@Result(name="success",location="/show.jsp")})
	public String test(){
//	 result=addBean.plus(num1, num2);
	
		return "success";
	}

}
