package com.college.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.college.beans.CollegeBean;
import com.college.beans.CollegeDetail;
import com.college.beans.LinesBean;
import com.college.dao.I_CollegeDao;
import com.college.mapper.I_Mapper;
import com.college.utils.MyBatisUtils;

@Repository
public class CollegeDao implements I_CollegeDao {
		I_Mapper dao=(I_Mapper) MyBatisUtils.getMapper("I_Mapper");
	@Override
	public List<CollegeDetail> getCollegeDetail(String cid) {
		System.out.println("45464");
		if(cid!=null&&dao!=null){
		System.out.println("getdetail");
		List<CollegeDetail> list=dao.getCollegeDetail(cid);
		for (CollegeDetail collegeDetail : list) {
			System.out.println(collegeDetail.getAddress());
		}
		return list;
		}else System.out.println("error");
//		I_CollegeDao icollege=(I_CollegeDao) MyBatisUtils.getMapper("I_College");
//		List<CollegeDetail> list=icollege.GetCollegeDetail(cid);
//		for (CollegeDetail collegeDetail : list) {
//		System.out.println(collegeDetail.getAddress()+","+collegeDetail.getBack_cover()+","+
//	collegeDetail.getCollege_icon()+collegeDetail.getCollege_name());
//		
//		}
		
		return null;
	}

	
	@Override
	public String addCollege(String c_id, String college_name, String college_icon, int pici, String probility,
			int expect_line, String tags) {
		System.out.println("add");
		String state="";
		
		if(dao.checkCid(c_id)==null){
		Boolean add1=dao.addCollegeDetail(c_id);
		Boolean add2=dao.addCollege(c_id);
		Boolean add3=dao.updateCollege(c_id, college_name, college_icon, pici,  expect_line, tags);
		
		Boolean add=add1&&add2&&add3?true:false;
		if(add) state="插入成功";
		}else state="大学编号不能重复";
		return state;
	}
	@Override
	public Boolean deleteCollege(String c_id) {
		System.out.println("delete");
		Boolean state=dao.deleteCollege(c_id);
		return state;
	}
	@Override
	public List<CollegeBean> queryCollege(String province, String tag,int score ) {
		System.out.println(province+tag+score+"2");
		score=score-20;
		province="%"+province+"%";
		tag="%"+tag+"%";
		List<CollegeBean> list=dao.queryCollege(province, tag,score );
		for (CollegeBean collegeBean : list) {
			System.out.println(collegeBean.getC_id());
		}
		
		return list;
	}


	@Override
	public Boolean updateCollegeDetail(String cid, String college_name, String college_icon, String tags,
			String college_descrption, String job_rate) {
		System.out.println("update");
		Boolean state=dao.updateCollegeDetail(cid, college_name, college_icon, tags, college_descrption, job_rate);
		System.out.println(state);
		return state;

	}


	@Override
	public List<LinesBean> findAllLines() {
		List<LinesBean> list=dao.findAllLines();
		return list;
	}


	@Override
	public Boolean updateScoreLine(String id, String score) {
		int pin=Integer.parseInt(id);
		Boolean state=dao.updateScoreLine(pin, score);
		return state;
	}


	@Override
	public List<LinesBean> queryLine(String province,String year) {
		province="%"+province+"%";
		year="%"+year+"%";
		List<LinesBean> list=dao.queryLine(province,year);
		return list;
	}
	

}
