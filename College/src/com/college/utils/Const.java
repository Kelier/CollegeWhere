package com.college.utils;

public class Const {
	private static final String IP = "192.168.0.xxx" ;
    private static final String PORT = "8080" ;
    private static final String PROJECTNAME = "xxx" ;
    public static final String BASEURL = "http://" + IP + ":" + PORT + "/" + PROJECTNAME + "/" ;

    public static final int RECYCLERVIEW_TYPE_ITEM = 1;
    public static final int RECYCLERVIEW_TYPE_FOOTER = 2;
    public static final int RECYCLERVIEW_REFRESH=1;//刷新
    public static final int RECYCLERVIEW_DOWNLOAD=2;//加载
    public static final int RECYCLERVIEW_INIT=0;//初始化

    public static final int REGISTER_SUCCESS = 1;
    public static final int REGISTER_FAIL = 2;
    public static final int USER_EXIST = 3;
    /*==========================================URL业务请求================================================*/
    /**
     *获取排行榜
     */
    public static final  String rankUrl = "http://apizhiyuan.lexue.com/paper/list";
    /**
     *获取高考资讯（新闻、必读、政策、院校）  http://apizhiyuan.lexue.com/paper/tags?type=news
     */
    public static final String newsTagsUrl="http://app.chaojizhiyuan.com/paper/tags";
    public static final String newsUrl="http://app.chaojizhiyuan.com/paper/list";
    public static final String biduUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E5%BF%85%E8%AF%BB&page_size=20&page=1";
    public static final String zhengceUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E6%94%BF%E7%AD%96&page_size=20&page=1";
    public static final String zhuanyeUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E4%B8%93%E4%B8%9A&page_size=20&page=1";
    public static final String yuanxiaoUrl="http://app.chaojizhiyuan.com/paper/list?type=news&tag=%E9%99%A2%E6%A0%A1&page_size=20&page=1";
    /**
     *获取如何选专业
     */
    public static final String careerUrl="http://apizhiyuan.lexue.com/paper/list";
    /**
     *获取批次线信息
     */
    public static final String piciUrl="http://apizhiyuan.lexue.com/pici";
    /**
     *获取首页推荐信息
     */
    public static final String homeUrl="http://apizhiyuan.lexue.com/college/suggest_summary";
    /**
     * 职业测试
     */
    public static final String analysisUrl="http://apizhiyuan.lexue.com/paper/analysis?id=";
    public static final String analysisSecondUrl="&page_size=50&sid=SazKoBKcAySMu8444DO4iC1eI5Ipqw2x";
    public static final String analysisThirdUrl="&last_qid=";
    public static final String analysisFourthUrl="&version=1";
    /**
     * 职业测试上传选项
     */
    public static final String uploadAnalysisUrl="http://apizhiyuan.lexue.com/paper/up_analysis";
    /**
     * 获取学校列表数据
     */
    public static final String collegeListUrl="http://apizhiyuan.lexue.com/college/suggest_list";
    /**
     * 获取学校具体详细数据
     */
    public static final String collegeDetailUrl="http://apizhiyuan.lexue.com/college/detail";
    /**
     *  获取学校具体录取分数线以及专业分数线
     */
    public static final String collegeAdimitUrl="http://apizhiyuan.lexue.com/college/line";
    /**
     * 获取用户个人信息
     */
    public static final String userMessageUrl="http://apizhiyuan.lexue.com/user/profile";
    /**
     * 获取专业具体信息
     */
    public static final String majorDetailUrl="http://apizhiyuan.lexue.com/major/detail";
    /**
     * 获取专业三级列表数据
     */
    public static final String majorListUrl="http://apizhiyuan.lexue.com/major/list";
    /**
     * 获取我的学校关注列表数据
     */
    public static final String interestedCollegeListUrl="http://apizhiyuan.lexue.com/user/colleges";
    /**
     * 获取设置关注的大学
     */
    public static final String interestedCollegeUrl="http://apizhiyuan.lexue.com/user/follow/";

    public static final String removeInterestedCollegeUrl="http://apizhiyuan.lexue.com/user/unfollow/";
    /**
     * 获取我的专业关注列表数据
     */
    public static final String interestedMajorListUrl="http://apizhiyuan.lexue.com/user/majors";

}
