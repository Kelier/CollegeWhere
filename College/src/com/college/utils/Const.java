package com.college.utils;

public class Const {
	private static final String IP = "192.168.0.xxx" ;
    private static final String PORT = "8080" ;
    private static final String PROJECTNAME = "xxx" ;
    public static final String BASEURL = "http://" + IP + ":" + PORT + "/" + PROJECTNAME + "/" ;

    public static final int RECYCLERVIEW_TYPE_ITEM = 1;
    public static final int RECYCLERVIEW_TYPE_FOOTER = 2;
    public static final int RECYCLERVIEW_REFRESH=1;//ˢ��
    public static final int RECYCLERVIEW_DOWNLOAD=2;//����
    public static final int RECYCLERVIEW_INIT=0;//��ʼ��

    public static final int REGISTER_SUCCESS = 1;
    public static final int REGISTER_FAIL = 2;
    public static final int USER_EXIST = 3;
    /*==========================================URLҵ������================================================*/
    /**
     *��ȡ���а�
     */
    public static final  String rankUrl = "http://apizhiyuan.lexue.com/paper/list";
    /**
     *��ȡ�߿���Ѷ�����š��ض������ߡ�ԺУ��  http://apizhiyuan.lexue.com/paper/tags?type=news
     */
    public static final String newsTagsUrl="http://app.chaojizhiyuan.com/paper/tags";
    public static final String newsUrl="http://app.chaojizhiyuan.com/paper/list";
    public static final String biduUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E5%BF%85%E8%AF%BB&page_size=20&page=1";
    public static final String zhengceUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E6%94%BF%E7%AD%96&page_size=20&page=1";
    public static final String zhuanyeUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E4%B8%93%E4%B8%9A&page_size=20&page=1";
    public static final String yuanxiaoUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E9%99%A2%E6%A0%A1&page_size=20&page=1";
    /**
     *��ȡ���ѡרҵ
     */
    public static final String careerUrl="http://apizhiyuan.lexue.com/paper/list";
    /**
     *��ȡ��������Ϣ
     */
    public static final String piciUrl="http://apizhiyuan.lexue.com/pici";
    /**
     *��ȡ��ҳ�Ƽ���Ϣ
     */
    public static final String homeUrl="http://apizhiyuan.lexue.com/college/suggest_summary";
    /**
     * ְҵ����
     */
    public static final String analysisUrl="http://apizhiyuan.lexue.com/paper/analysis?id=";
    public static final String analysisSecondUrl="&page_size=50&sid=SazKoBKcAySMu8444DO4iC1eI5Ipqw2x";
    public static final String analysisThirdUrl="&last_qid=";
    public static final String analysisFourthUrl="&version=1";
    /**
     * ְҵ�����ϴ�ѡ��
     */
    public static final String uploadAnalysisUrl="http://apizhiyuan.lexue.com/paper/up_analysis";
    /**
     * ��ȡѧУ�б�����
     */
    public static final String collegeListUrl="http://apizhiyuan.lexue.com/college/suggest_list";
    /**
     * ��ȡѧУ������ϸ����
     */
    public static final String collegeDetailUrl="http://apizhiyuan.lexue.com/college/detail";
    /**
     *  ��ȡѧУ����¼ȡ�������Լ�רҵ������
     */
    public static final String collegeAdimitUrl="http://apizhiyuan.lexue.com/college/line";
    /**
     * ��ȡ�û�������Ϣ
     */
    public static final String userMessageUrl="http://apizhiyuan.lexue.com/user/profile";
    /**
     * ��ȡרҵ������Ϣ
     */
    public static final String majorDetailUrl="http://apizhiyuan.lexue.com/major/detail";
    /**
     * ��ȡרҵ�����б�����
     */
    public static final String majorListUrl="http://apizhiyuan.lexue.com/major/list";
    /**
     * ��ȡ�ҵ�ѧУ��ע�б�����
     */
    public static final String interestedCollegeListUrl="http://apizhiyuan.lexue.com/user/colleges";
    /**
     * ��ȡ���ù�ע�Ĵ�ѧ
     */
    public static final String interestedCollegeUrl="http://apizhiyuan.lexue.com/user/follow/";

    public static final String removeInterestedCollegeUrl="http://apizhiyuan.lexue.com/user/unfollow/";
    /**
     * ��ȡ�ҵ�רҵ��ע�б�����
     */
    public static final String interestedMajorListUrl="http://apizhiyuan.lexue.com/user/majors";

}
