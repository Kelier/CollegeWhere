package com.college.controller;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.college.beans.BathBean;
import com.college.beans.CollegeBean;
import com.college.beans.CollegeDetail;
import com.college.beans.LinesBean;
import com.college.beans.UserBean;
import com.college.service.I_College;
import com.college.service.I_User;
import com.college.utils.Const;
import com.college.utils.HttpRequest;
import com.college.utils.HttpServer;
import com.college.utils.UserMsg;

/**
 * @author John Yan
 *
 */
@Controller
public class Mycontrol {
	@Autowired
	I_User userService;

	@ResponseBody
	@RequestMapping(value="Login")
	public Map loginAction(String uname,String upwd,String vcode,HttpSession session){
		System.out.println(uname+","+upwd+","+vcode);
		Map map=new HashMap();
		String imgvcode = session.getAttribute("rand").toString();
		if (vcode.equals(imgvcode)) {
		String res=userService.userLogin(uname, upwd);
		String items[]=res.split(",");
		String uid=items[0];
		
		String nickname=items[1];
		if(uid!=null&&uid.length()>0){
			session.setAttribute("uname", nickname);
			session.setAttribute("uid", uid);
			System.out.println("login  OK");
		}
		map.put("loginResult", true);
		map.put("uid", uid);
		map.put("state", 200);
		return map;
		}else{ 
		map.put("state", 400);
		return map;
		}
	}

	@ResponseBody
	@RequestMapping(value="LoginOut")
	public Map loginOutAction(HttpSession session){
		System.out.println("注销用户");
		session.removeAttribute("uname");
		session.removeAttribute("uid");
		Map map=new HashMap();
		map.put("loginOutResult", true);
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="Register")
	public Map addUser(String uname,String upwd,String reupwd,String vcode,HttpSession session){
		System.out.println(uname+","+upwd+","+vcode);
		Map map=new HashMap();
		String imgvcode = session.getAttribute("rand").toString();
		if(!upwd.equals(reupwd))
			map.put("state", 600);
		else if (vcode.equals(imgvcode)) {
			switch(userService.addUser(uname,upwd)){
			case Const.REGISTER_SUCCESS: 
				map.put("registerResult", 200);
				break;
			case Const.REGISTER_FAIL: 
				map.put("registerResult", 400);
				break;
			case Const.USER_EXIST: 
				map.put("registerResult", 500);
				break;
			}
			map.put("state", 200);
		}else{ 
			map.put("state", 400);
		}
		System.out.println("返回数据");
		return map;
	}
	
/*---------------------------------------------------test
//@ResponseBody
//@RequestMapping(value="Login")
//public Map loginAction(String uname,String upwd,HttpSession session){
//	System.out.println(uname+","+upwd);
//	Map<String,Boolean> map=new HashMap<String,Boolean>();
//	Boolean temp=userService.login(uname, upwd);
//	if(temp){
//		session.setAttribute("uname", uname);
//		System.out.println("login  OK");
//	}
//	map.put("loginResult", temp);
//	return map;
//}
//
//
//@ResponseBody
//@RequestMapping(value="Register")
//public Map registerAction(String uname,String upwd){
//	Map<String,Boolean> map=new HashMap<String,Boolean>();
///*	Boolean temp=userService.login(uname, upwd);
//	if(temp){
//		map.put("login", true);
//	}else{
//		map.put("login", false);
//	}
//	System.out.println("login  OK");
//	*/
//	return map;
//}
//
//
//@RequestMapping(value="test")
//public String tt(HttpSession session){
//System.out.println("OK");
//session.setAttribute("msg", "sdjfhkajshf");
//return "show";
//}

	@ResponseBody
	@RequestMapping(value="QueryLine")
	public List<LinesBean> queryLine(String province,String year){
		List<LinesBean> list=collegeService.queryLine(province,year);
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="FindAllLines")
	public List<LinesBean> findAllLines(){
		List<LinesBean> list=collegeService.findAllLines();
		return list;
	}
	
	@ResponseBody
	@RequestMapping(value="UpdateLineScore")
	public Boolean updateLineScore(String id,String score){
		Boolean state=collegeService.updateScoreLine(id, score);
		return state;
	}
	
	
	/**
	 * @param lines
	 * @return
	 * 插入批次线数据
	 */
	@ResponseBody
	@RequestMapping(value="InsertData")
	public Boolean insertData(String lines){

		Boolean state = null;
		List<BathBean> list=JSON.parseArray(lines,BathBean.class);
	
		for (BathBean bathBean : list) {
			state=userService.insertData(bathBean.getProvince(),bathBean.getYear(),bathBean.getType(),bathBean.getBath(),bathBean.getScore());
		}
//		System.out.println(list.get(0).getProvince());
		return state;
	}
	
	
	
	/**
	 * @param mobile
	 * @param password
	 * @return state
	 * 用户登录
	 */
	@ResponseBody
	@RequestMapping(value="UserLogin")
	public String userLogin(String mobile,String password){
		String state=userService.userLogin(mobile, password);
		return state;
	}
	

	
	/**
	 * @param uid
	 * @param nickname
	 * @param subject
	 * @param avatar
	 * @param gender
	 * @param province
	 * @param score
	 * @return state
	 * 更新用户信息
	 */
	@ResponseBody
	@RequestMapping(value="UpdateUser")
	public Boolean updateUser(String uid,String nickname,String subject,String avatar,String gender,String province,String score){
		System.out.println(nickname);
		Boolean state=userService.updateUser(uid, nickname, subject, avatar, gender, province, score);
		return state;
	}
	
	/**
	 * @param uid
	 * @return state
	 * 删除用户
	 */
	@ResponseBody
	@RequestMapping(value="DeleteUser")
	public Boolean deleteUser(String uid){
		Boolean state=userService.deleteUser(uid);
		return state;
	}
	
	/**
	 * @param uid
	 * @return list
	 * 获取某个用户信息
	 */
	@ResponseBody
	@RequestMapping(value="QueryUser")
	public List<UserBean> queryUser(String nickname){
		List<UserBean> list=userService.queryUser(nickname);
		return list;
	}
	
	/**
	 * @return list
	 * 获取所有用户
	 */
	@ResponseBody
	@RequestMapping(value="FindUser")
	public List<UserBean> findUser(){
		List<UserBean> list=userService.findUser();
		return list;
	}
	
/**
 * 服务器端登录
 * @param username
 * @param password
 * @param session
 * @return state
 */
@ResponseBody
@RequestMapping(value="adminlogin")
public String adminLogin(String username,String password,HttpSession session){
	System.out.println(username+","+password);
	session.setAttribute("admin_name", username);
	session.setAttribute("admin_pass", password);
	String state=userService.adminlogin(username, password);
	return state;
}

@Autowired
I_College collegeService;
/**
 * @param cid
 * @return list
 * 获取大学详情
 */
@ResponseBody
@RequestMapping(value="GetCollegeDetail")
public List<CollegeDetail> GetCollegeDetail(String cid){
	System.out.println(cid);
	List<CollegeDetail> Detail=new ArrayList<CollegeDetail>();
	Detail=collegeService.getCollegeDetail(cid);
	return Detail;
}


@ResponseBody
@RequestMapping(value="UpdateCollegeDetail")
public Boolean updateCollegeDetail(String cid,String college_name,String college_icon,String tags,String college_descrption,String job_rate){
//	String[] group=tags.split(",");
//	for (String string : group) {
//		tags+=string+" ";
//	}
	System.out.println(tags);
	Boolean state=collegeService.updateCollegeDetail(cid, college_name, college_icon, tags, college_descrption, job_rate);
	return state;
}

/**
 * @param province
 * @param Subject
 * @param Score
 * @param college_Province
 * @param tag
 * @return list
 * 获取院校
 */
@ResponseBody
@RequestMapping(value="QueryCollege")
public List queryCollege(String province,String tag,int score){
	System.out.println(province+tag+score);
	List<CollegeBean> list=collegeService.queryCollege(province,tag,score);
	return list;
}

/**
 * @param c_id
 * @param college_name
 * @param college_icon
 * @param pici
 * @param probility
 * @param expect_line
 * @param tags
 * @return state
 * 添加院校
 */
@ResponseBody
@RequestMapping(value="AddCollege")
public String addCollege(String c_id,String college_name,String college_icon,int pici,String probility,int expect_line,String tags){
	String state=collegeService.addCollege(c_id, college_name, college_icon, pici, probility, expect_line, tags);
	return state;
}

/**
 * @param c_id
 * @return state
 * 删除院校
 */
@ResponseBody
@RequestMapping(value="DeleteCollege")
public Boolean deleteCollege(String c_id){
	Boolean state=collegeService.deleteCollege(c_id);
	return state;
}




@ResponseBody
@RequestMapping(value="GetData")
public String getDataAction(String param,String subject,String score,String province,String college_province,String college_type,String tag,String last_cid,String college,String cid){
	System.out.println(param);
	switch(param){
	case "rank":
		return HttpServer.getRank();
	case "college_list":
		return HttpServer.getCollegelist(subject,score,province,college_province,college_type,tag,last_cid,college);
	case "college_detail":
		UserMsg.cid=cid;
		return HttpServer.getCollegeDetail();
	case "college_admit":
		UserMsg.cid=cid;
		return HttpServer.getCollegeAdmit();
	case "new0":
		return HttpServer.getBidu();
	case "new1":
		return HttpServer.getZhengce();
	case "new2":
		return HttpServer.getZhuanye();
	case "new3":
		return HttpServer.getYuanxiao();
		
		
	default:return "{status:-1}";
	}
}



@ResponseBody
@RequestMapping(value="showCollege")
public String showCollege(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	Enumeration enu=request.getParameterNames();  
	while(enu.hasMoreElements()){  
	String paraName=(String)enu.nextElement();  
	System.out.println(paraName+": "+request.getParameter(paraName));  
	params.put(paraName, request.getParameter(paraName));  
	}
     //调用的接口  
    String url = "http://www.gkzy100.com/score/showCollege.html";    
     //调用Http post 请求  
     String resultStr = HttpRequest.httpPost(url, params);  
     System.out.println(resultStr);
     //设置编码格式，并返回Json数据到页面  
    /* response.setContentType("text/json;charset=UTF-8");  
     try {
		response.getWriter().write(resultStr);
		response.getWriter().print(resultStr);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}*///返回数据到前台    showProfessional.html
 	return resultStr;
}

@ResponseBody
@RequestMapping(value="showProfessional")
public String showProfessional(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	Enumeration enu=request.getParameterNames();  
	while(enu.hasMoreElements()){  
	String paraName=(String)enu.nextElement();  
	System.out.println(paraName+": "+request.getParameter(paraName));  
	params.put(paraName, request.getParameter(paraName));  
	}
     //调用的接口  
    String url = "http://www.gkzy100.com/score/showProfessional.html";    
     //调用Http post 请求  
     String resultStr = HttpRequest.httpPost(url, params);  
     System.out.println(resultStr);
     //设置编码格式，并返回Json数据到页面  
    /* response.setContentType("text/json;charset=UTF-8");  
     try {
		response.getWriter().write(resultStr);
		response.getWriter().print(resultStr);
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}*///返回数据到前台  
 	return resultStr;
}

@ResponseBody
@RequestMapping(value="showRegion")
public String showRegion(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	Enumeration enu=request.getParameterNames();  
	while(enu.hasMoreElements()){  
	String paraName=(String)enu.nextElement();  
	System.out.println(paraName+": "+request.getParameter(paraName));  
	params.put(paraName, request.getParameter(paraName));  
	}
     //调用的接口  
    String url = "http://www.gkzy100.com/score/showRegion.html";    
     //调用Http post 请求  
    String resultStr = HttpRequest.httpPost(url, params);  
 	return resultStr;
}


@ResponseBody
@RequestMapping(value="showCategory")
public String showCategory(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	Enumeration enu=request.getParameterNames();  
	while(enu.hasMoreElements()){  
	String paraName=(String)enu.nextElement();  
	System.out.println(paraName+": "+request.getParameter(paraName));  
	params.put(paraName, request.getParameter(paraName));  
	}
     //调用的接口  
    String url = "http://www.gkzy100.com/frontchoose/showCategory.html";    
     //调用Http post 请求  
    String resultStr = HttpRequest.httpPost(url, params);  
 	return resultStr;
}


@ResponseBody
@RequestMapping(value="majorpage")
public String majorpage(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	Enumeration enu=request.getParameterNames();  
	while(enu.hasMoreElements()){  
	String paraName=(String)enu.nextElement();  
	System.out.println(paraName+": "+request.getParameter(paraName));  
	params.put(paraName, request.getParameter(paraName));  
	}
     //调用的接口  
    String url = "http://www.gkzy100.com/frontchoose/majorpage.html";    
     //调用Http post 请求  
    String resultStr = HttpRequest.superHttpPost(url, params);  
 	return resultStr;
}


@ResponseBody
@RequestMapping(value="majorAnalysis")
public String majorAnalysis(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	String mid=request.getParameter("mid");
     //调用的接口  
    String url = "http://www.gkzy100.com/major/analysis/"+mid+".html";    
     //调用Http post 请求  
    String resultStr = HttpRequest.httpPost(url, params); 
  
    String s1="<div class=\"font-size14 words-p2\">";
    String s2="<div class=\"clear\">";
    int h1,h2;
    Boolean flag=false;
    Scanner scanner=new Scanner(resultStr); 
    resultStr="";
    while(scanner.hasNextLine()){
    	if(!flag){//没找到h1
    		h1=scanner.nextLine().indexOf(s1);
        	if(h1>0){
        		flag=true;
        	}
    	}else{//开始找h2
    		String str=scanner.nextLine();
    		h2=str.indexOf(s2);
    		if(h2<1){
    			resultStr+=str+"\n";
    		}else{
    			break;
    		}
    	}
    }
   // System.out.println(resultStr);
 	return resultStr;
}


@ResponseBody
@RequestMapping(value="majorRank")
public String majorRank(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	String mid=request.getParameter("mid");
     //调用的接口  
    String url = "http://www.gkzy100.com/major/rank/"+mid+".html";    
     //调用Http post 请求  
    String resultStr = HttpRequest.httpPost(url, params); 
  //  System.out.println(resultStr);
    String s1="<div class=\"ranklist\">";
    String s2="</div>";
    int h1,h2;
    Boolean flag=false;
    Scanner scanner=new Scanner(resultStr); 
    resultStr="";
    while(scanner.hasNextLine()){
    	if(!flag){//没找到h1
    		h1=scanner.nextLine().indexOf(s1);
        	if(h1>0){
        		flag=true;
        	}
    	}else{//开始找h2
    		String str=scanner.nextLine();
    		h2=str.indexOf(s2);
    		if(h2<1){
    			resultStr+=str+"\n";
    		}else{
    			break;
    		}
    	}
    }
   // System.out.println(resultStr);
 	return resultStr;
}

@ResponseBody
@RequestMapping(value="majorCollege")
public String majorCollege(HttpServletRequest request,HttpServletResponse response){ 
	//组装成Map 进行参数的传递  
	Map<String,String> params = new HashMap<String,String>(); 
	//获取前台传入的参数 
	Enumeration enu=request.getParameterNames();  
	while(enu.hasMoreElements()){  
	String paraName=(String)enu.nextElement();  
	System.out.println(paraName+": "+request.getParameter(paraName));  
	params.put(paraName, request.getParameter(paraName));  
	}
     //调用的接口   
    String url = "http://www.gkzy100.com/frontchoose/universitySetuppage.html";    
     //调用Http post 请求  
    String resultStr = HttpRequest.httpPost(url, params); 
   // System.out.println(resultStr);
 	return resultStr.replaceAll("/upload/UniversityLogo","http://www.gkzy100.com/upload/UniversityLogo");
}

@ResponseBody
@RequestMapping(value="imgList")
public String imgList(HttpServletRequest request,HttpServletResponse response){ 
     //调用的接口   
    String url = "http://apizhiyuan.lexue.com/banner/list";    
     //调用Http post 请求  
    String resultStr = HttpRequest.sendGet(url); 
   // System.out.println(resultStr);
 	return resultStr;
}

@ResponseBody
@RequestMapping(value="GetSingleInfo")
public List<UserBean> getSingleInfo(String uid){
	System.out.println(uid);
	List<UserBean> list=userService.getSingleInfo(uid);
return list;
}

//http://blog.csdn.net/h70614959/article/details/38983567

@ResponseBody
@RequestMapping(value="UpdateImage")
public void updateImage(@RequestParam(required = false, value = "file") MultipartFile file,HttpServletRequest req,HttpServletResponse rep,HttpSession session){
    //传了文件，做什么处理)
	String stream="java.io.FileInputStream";
	System.out.println(file.getOriginalFilename());
	try {
	stream=file.getInputStream().toString().substring(0,file.getInputStream().toString().lastIndexOf("@"));
	System.out.println(stream);
	} catch (IOException e1) {
	e1.printStackTrace();
	}
	String filename=file.getOriginalFilename();
	String extName=filename.substring(filename.lastIndexOf("."));
	String context=req.getSession().getServletContext().getRealPath("/");
	System.out.println(context);
	Boolean temp=null;
	try {
		ArrayList al = new ArrayList();
		al.add(".jpg");
		al.add(".png");
		al.add(".gif");
		al.add(".bmp");
		al.add(".jpeg");
		FileInputStream fis;
		FileOutputStream fos;
		ByteArrayInputStream bais;
		
		//PrintWriter out = rep.getWriter();
		File filedir=new File(context+"photoupload");
		//如果文件夹不存在则创建    
		if  (!filedir .exists()  && !filedir .isDirectory())      
		{       
		    System.out.println("//不存在");  
		    filedir .mkdir();    
		} else   
		{  
		    System.out.println("//目录存在");  
		}  
		String fileName = "photoupload/" + new Date().getTime() + extName;
		if (al.contains(extName)) {
			fos=new FileOutputStream(context+fileName);
			int length=0;
			if(stream.equalsIgnoreCase("java.io.FileInputStream")){
				fis=(FileInputStream) file.getInputStream();
				byte[] size=new byte[fis.available()];
				while((length=fis.read(size))!=-1){
					fos.write(size,0,length);
				}
				fis.close();
			}
			if(stream.equalsIgnoreCase("java.io.ByteArrayInputStream")){
			bais=(ByteArrayInputStream) file.getInputStream();
			byte[] size=new byte[bais.available()];
			while((length=bais.read(size))!=-1){
					fos.write(size,0,length);
			}
			bais.close();
			}
			String uid=(String) session.getAttribute("uid");
			System.out.println(uid);
			session.setAttribute("photo", fileName);
			temp=userService.modifyPath(uid,fileName);
			if (temp) {
				System.out.println("图片路径修改成功");
			//	out.print(fileName);
			} else {
			//	out.print("photoerror");
			}
			fos.flush();
			fos.close();
		} else {
		//	out.print("extnameerror");
		}
		//out.flush();
		//out.close();
		rep.sendRedirect("html/college/html/personInfo.jsp");
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}

}
