package com.college.utils;

import java.io.UnsupportedEncodingException;

public class HttpServer {
    /**
     * ��ȡ���а�����
     * @param callback
     */
    public static String getRank() {
    	return HttpRequest.sendGet(Const.rankUrl, "type=rank");
    }
    /**
     * ��ȡ���ű�������
     * @param callback
     */
    public static String getNewsTitles() {
        return HttpRequest.sendGet(Const.newsTagsUrl, "type=news");
    }

    /**
     * ��ȡ�߿���Ѷ
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
     * ��ȡ�ض�����
     * @param callback
     */
    public static String getBidu() {
        return HttpRequest.sendGet(Const.biduUrl);
    }
    /**
     * ��ȡ��������
     * @param callback
     */
    public static String getZhengce() {
        return HttpRequest.sendGet(Const.zhengceUrl);
    }
    /**
     * ��ȡרҵ����
     * @param callback
     */
    public static String getZhuanye() {
        
        return HttpRequest.sendGet(Const.zhuanyeUrl);
    }
    /**
     * ��ȡԺУ����
     * @param callback
     */
    public static String getYuanxiao() {
        return HttpRequest.sendGet(Const.yuanxiaoUrl) ;
       
    }
    /**
     * ��ȡ��������
     * @param callback
     */
    public static String getPici(String province) {
        return HttpRequest.sendGet(Const.piciUrl) ;
      //  params.addQueryStringParameter("province", province);
       
    }
    /**
     * ��ȡְҵ��������
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
     * �ϴ�ְҵ��������
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
     * ��ȡ��ѧ�б�����
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
		System.out.println("��ȡ��ѧ�б���������:"+sbf.toString());
    	return HttpRequest.sendGet(Const.collegeListUrl,sbf.toString()) ;
    }
    /**
     * ��ȡ��ҳ����
     * @param callback
     */
    public static String getHome() {
        return HttpRequest.sendGet(Const.homeUrl) ;
      //  params.addQueryStringParameter("score", UserMsg.score);
      //  params.addQueryStringParameter("subject", UserMsg.subject);
       // params.addQueryStringParameter("province",UserMsg.province);
       
    }
    /**
     * ��ȡ��ѧ������ϸ��Ϣ
     * @param callback
     */
    public static String getCollegeDetail() {
    	
    	StringBuffer sbf=new StringBuffer();
		sbf.append("cid="+ UserMsg.cid);
		sbf.append("&"+"sid="+ UserMsg.sid);
        return HttpRequest.sendGet(Const.collegeDetailUrl,sbf.toString()) ;
       
    }
    /**
     * ��ȡѧУ����¼ȡ�������Լ�רҵ������
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
     *��ȡ���ѡרҵ
     */
    public static String getCareer() {
        return HttpRequest.sendGet(Const.careerUrl);
     //   params.addQueryStringParameter("type", "career");
       
    }
    /**
     *��ȡ������Ϣ
     */
    public static String getUserMsg() {
        return HttpRequest.sendGet(Const.userMessageUrl);
     //   params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *��ȡרҵ������Ϣ
     */
    public static String getMajorDetail() {
        return HttpRequest.sendGet(Const.majorDetailUrl);
       /* params.addQueryStringParameter("mid", UserMsg.mid);
        params.addQueryStringParameter("sid", UserMsg.sid);*/
       
    }
    /**
     *��ȡרҵ�����б�����
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
     *��ȡ�ҵĹ�עѧУ��Ϣ
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
     *�����ҵĹ�עѧУ��Ϣ
     */
    public static String setInterestedCollege() {
        return HttpRequest.sendGet(Const.interestedCollegeUrl);
      //  params.addQueryStringParameter("cid", UserMsg.cid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *�����Ƴ��ҵĹ�עѧУ��Ϣ
     */
    public static String removeInterestedCollege() {
        return HttpRequest.sendGet(Const.removeInterestedCollegeUrl);
      //  params.addQueryStringParameter("cid", UserMsg.cid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *��ȡ�ҵĹ�ערҵ��Ϣ
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
     *�����ҵĹ�ערҵ��Ϣ
     */
    public static String setInterestedMajor() {
        return HttpRequest.sendGet(Const.interestedCollegeUrl);
      //  params.addQueryStringParameter("mid", UserMsg.mid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    /**
     *�����Ƴ��ҵĹ�ערҵ��Ϣ
     */
    public static String removeInterestedMajor() {
        return HttpRequest.sendGet(Const.removeInterestedCollegeUrl);
      //  params.addQueryStringParameter("mid", UserMsg.mid);
      //  params.addQueryStringParameter("sid", UserMsg.sid);
       
    }
    
    
}