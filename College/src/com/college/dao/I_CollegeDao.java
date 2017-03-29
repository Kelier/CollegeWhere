package com.college.dao;

import java.util.List;

import com.college.beans.CollegeBean;
import com.college.beans.CollegeDetail;
import com.college.beans.LinesBean;

public interface I_CollegeDao {
	//获取详情
	List<CollegeDetail> getCollegeDetail(String cid);
	//更新详情
	Boolean updateCollegeDetail(String cid,String college_name,String college_icon,String tags,String college_descrption,String job_rate);
	//查询院校
	List<CollegeBean>queryCollege(String province,String tag,int score);
	//增加院校
	String addCollege(String c_id,String college_name,String college_icon,int pici,String probility,int expect_line,String tags);
	//删除院校
	Boolean deleteCollege(String c_id);
	
	//获得所有批次线
	List<LinesBean> findAllLines();
	//查询具体省份批次
	List<LinesBean>queryLine(String province,String year);
	//更新省份批次线
	Boolean updateScoreLine(String id,String score);
}
