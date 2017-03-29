package com.college.utils;

import java.io.UnsupportedEncodingException;

public class HttpServer {
    /**
     * 获取排行榜数据
     * @param callback
     */
    public static String getRank() {
    	return HttpRequest.sendGet(Const.rankUrl, "type=rank");
    }
    /**
     * 获取新闻标题数据
     * @param callback
     */
    public static String getNewsTitles() {
        return HttpRequest.sendGet(Const.newsTagsUrl, "type=news");
    }

    /**
     * 获取高考资讯
     * @param callback
     * @return 
     */
    public static String getNews(String tag) {
    	StringBuffer sbf=new StringBuffer();
		sbf.append("type="+ "news");
		sbf.append("&"+"tag="+ tag);
		sbf.append("&"+"page_size="+ "20");
		sbf.append("&"+"page="+ "1");
        return HttpRequest.sendGet(Const.newsUrl,sbf.toString());
    }
    public static String getImage() {
        return HttpRequest.sendGet(Const.yuanxiaoUrl) ;
       
    }

    /**
     * 获取必读数据
     * @param callback
     */
    public static String getBidu() {
        return HttpRequest.sendGet(Const.biduUrl);
    }
    /**
     * 获取政策数据
     * @param callback
     */
    public static String getZhengce() {
        return HttpRequest.sendGet(Const.zhengceUrl);
    }
    /**
     * 获取专业数据
     * @param callback
     */
    public static String getZhuanye() {
        
        return HttpRequest.sendGet(Const.zhuanyeUrl);
    }
    /**
     * 获取院校数据
     * @param callback
     */
    public static String getYuanxiao() {
        return HttpRequest.sendGet(Const.yuanxiaoUrl) ;
       
    }
    /**
     * 获取批次数据
     * @param callback
     */
    public static String getPici(String province) {
        return HttpRequest.sendGet(Const.piciUrl) ;
      //  params.addQueryStringParameter("province", province);
       
    }
    /**
     * 获取职业测试数据
     * @param callback
     */
    public static String getAnalysis(int id,int pid) {
		return null;
       
       /* if(id==2){
             params = new RequestParams(Const.analysisUrl+id+Const.analysisSecondUrl) ;
        }else{
            params = new RequestParams(Const.analysisUrl+id+Const.analysisSecondUrl+Const.analysisThirdUrl+pid+Const.analysisFourthUrl) ;
        }*/
       
    }
    /**
     * 上传职业测试数据
     * @param callback
     */
    public static String uploadAnalysis() {
        return HttpRequest.sendGet(Const.uploadAnalysisUrl) ;
      /*
        params.addBodyParameter("id", UserMsg.analysis_id);
        params.addBodyParameter("answer", UserMsg.analysis_answer);
        params.addBodyParameter("sid", UserMsg.sid);
        params.addBodyParameter("version", UserMsg.analysis_version);*/

        
    }
    /**
     * 获取大学列表数据
     * @param callback
     */
    public static String getCollegelist() {
    	StringBuffer sbf=new StringBuffer();
		sbf.append("page_size="+ UserMsg.page_size);
		sbf.append("&"+"subject="+ UserMsg.subject);
		sbf.append("&"+"sid="+ UserMsg.sid);
		sbf.append("&"+"score="+ UserMsg.score);
		try {
			sbf.append("&"+"province="+ java.net.URLEncoder.encode(UserMsg.province,"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return HttpRequest.sendGet(Const.collegeListUrl,sbf.toString()) ;
     
    }
    public static String getCollegelist(String province) {
    	StringBuffer sbf=new StringBuffer();
		sbf.append("page_size="+ UserMsg.page_size);
		sbf.append("&"+"subject="+ UserMsg.subject);
		sbf.append("&"+"sid="+ UserMsg.sid);
		sbf.append("&"+"score="+ UserMsg.score);
		try {
			sbf.append("&"+"province="+ java.net.URLEncoder.encode(province,"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return HttpRequest.sendGet(Const.collegeListUrl,sbf.toString()) ;
    }
    public static String getCollegelist(String subject,String score,String province,String college_province,String college_type,String tag,String last_cid,String college) {
    	StringBuffer sbf=new StringBuffer();
		sbf.append("page_size="+ UserMsg.page_size);
		sbf.append("&"+"sid="+ UserMsg.sid);
		if(subject!=null&&subject.length()>0)sbf.append("&"+"subject="+ subject);
		if(score!=null&&score.length()>0)sbf.append("&"+"score="+ score);
		if(tag!=null&&tag.length()>0)sbf.append("&"+"tag="+ tag);
		try {
			sbf.append("&"+"province="+ java.net.URLEncoder.encode(province,"utf-8"));
			if(college_province!=null&&college_province.length()>0)
				sbf.append("&"+"college_province="+ java.net.URLEncoder.encode(college_province,"utf-8"));
			if(college_type!=null&&college_type.length()>0)
				sbf.append("&"+"college_type="+ java.net.URLEncoder.encode(college_type,"utf-8"));
			if(college!=null&&college.length()>0)sbf.append("&"+"query="+ java.net.URLEncoder.encode(college,"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(last_cid!=null&&last_cid.length()>0)sbf.append("&"+"last_cid="+ last_cid);
		System.out.println("获取大学列表数据链接:"+sbf.toString());
    	return HttpRequest.sendGet(Const.collegeListUrl,sbf.toString()) ;
    }
    /**
     * 获取主页数据
     * @param callback
     */
    public static String getHome() {
        return HttpRequest.sendGet(Const.homeUrl) ;
      //  params.addQueryStringParameter("score", UserMsg.score);
      //  params.addQueryStringParameter("subject", UserMsg.subject);
       // params.addQueryStringParameter("province",UserMsg.province);
       
    }
    /**
     * 获取大学具体详细信息
     * @param callback
     */
    public static String getCollegeDetail() {
    	
    	StringBuffer sbf=new StringBuffer();
		sbf.append("cid="+ UserMsg.cid);
		sbf.append("&"+"sid="+ UserMsg.sid);
        return HttpRequest.sendGet(Const.collegeDetailUrl,sbf.toString()) ;
       
    }
    /**
     * 获取学校具体录取分数线以及专业分数线
     * @param callback
     */
    public static String getCollegeAdmit() {
    	StringBuffer sbf=new StringBuffer();
		sbf.append("cid="+ UserMsg.cid);
		sbf.append("&"+"subject="+ UserMsg.subject);
		sbf.append("&"+"score="+ UserMsg.score);
		try {
			sbf.append("&"+"province="+ java.net.URLEncoder.encode(UserMsg.province,"utf-8"));
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return HttpRequest.sendGet(Const.collegeAdimitUrl,sbf.toString()) ;
        
    }
    /**
     *获取如何选专业
     */
    public static String getCareer() {
        return HttpRequest.sendGet(Const.careerUrl);
     //   params.addQueryStringParameter("type", "career");
       
    }
    /**
     *获取个人信息
     */
    public static String getUserMsg() {
        return HttpRequest.sendGet(Const.userMessageUrl);
     //   params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *获取专业具体信息
     */
    public static String getMajorDetail() {
        return HttpRequest.sendGet(Const.majorDetailUrl);
       /* params.addQueryStringParameter("mid", UserMsg.mid);
        params.addQueryStringParameter("sid", UserMsg.sid);*/
       
    }
    /**
     *获取专业三级列表数据
     */
    public static String getMajorList(String first_level) {
        return HttpRequest.sendGet(Const.majorListUrl);
      //  params.addQueryStringParameter("first_level", first_level);
       
    }
    public static String getMajorList(String first_level,String second_level) {
        return HttpRequest.sendGet(Const.majorListUrl);
      //  params.addQueryStringParameter("first_level", first_level);
       // params.addQueryStringParameter("second_level", second_level);
       
    }
    public static String getMajorList(String first_level,String second_level,String third_level) {
        return HttpRequest.sendGet(Const.majorListUrl);
      //  params.addQueryStringParameter("first_level", first_level);
     //   params.addQueryStringParameter("second_level", second_level);
     //   params.addQueryStringParameter("third_level", third_level);
       
    }
    /**
     *获取我的关注学校信息
     */
    public static String getInterestedCollegeList() {
        return HttpRequest.sendGet(Const.interestedCollegeListUrl);
     /*   params.addQueryStringParameter("sid", UserMsg.sid);
        params.addQueryStringParameter("page_size", UserMsg.page_size);
        params.addQueryStringParameter("score", UserMsg.score);
        params.addQueryStringParameter("province",UserMsg.province);
        params.addQueryStringParameter("subject", UserMsg.subject);*/
       
    }
    public static String getInterestedCollegeList(String last_cid) {
        return HttpRequest.sendGet(Const.interestedCollegeListUrl);
     /*   params.addQueryStringParameter("sid", UserMsg.sid);
        params.addQueryStringParameter("page_size", UserMsg.page_size);
        params.addQueryStringParameter("score", UserMsg.score);
        params.addQueryStringParameter("province",UserMsg.province);
        params.addQueryStringParameter("subject", UserMsg.subject);
        params.addQueryStringParameter("last_cid",last_cid);*/
       
    }
    /**
     *设置我的关注学校信息
     */
    public static String setInterestedCollege() {
        return HttpRequest.sendGet(Const.interestedCollegeUrl);
      //  params.addQueryStringParameter("cid", UserMsg.cid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *设置移除我的关注学校信息
     */
    public static String removeInterestedCollege() {
        return HttpRequest.sendGet(Const.removeInterestedCollegeUrl);
      //  params.addQueryStringParameter("cid", UserMsg.cid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *获取我的关注专业信息
     */
    public static String getInterestedMajorList() {
        return HttpRequest.sendGet(Const.interestedMajorListUrl);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
      //  params.addQueryStringParameter("mid", UserMsg.mid);
       
    }
    public static String getInterestedMajorList(String last_mid) {
        return HttpRequest.sendGet(Const.interestedMajorListUrl);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
      //  params.addQueryStringParameter("last_mid",last_mid);
       
    }
    /**
     *设置我的关注专业信息
     */
    public static String setInterestedMajor() {
        return HttpRequest.sendGet(Const.interestedCollegeUrl);
      //  params.addQueryStringParameter("mid", UserMsg.mid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *设置移除我的关注专业信息
     */
    public static String removeInterestedMajor() {
        return HttpRequest.sendGet(Const.removeInterestedCollegeUrl);
      //  params.addQueryStringParameter("mid", UserMsg.mid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    
    
}