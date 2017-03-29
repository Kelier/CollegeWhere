package com.college.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.college.beans.CollegeBean;
import com.college.beans.CollegeDetail;
import com.college.beans.LinesBean;
import com.college.dao.I_CollegeDao;
import com.college.service.I_College;

@Service
public class CollegeService implements I_College {

	@Autowired
	I_CollegeDao collegeDao;

	@Override
	public List<CollegeDetail> getCollegeDetail(String cid) {
		// TODO Auto-generated method stub
		return collegeDao.getCollegeDetail(cid);
	}


	@Override
	public List<CollegeBean> queryCollege(String province,
			String tag,int score ) {
		// TODO Auto-generated method stub
		return collegeDao.queryCollege(province, tag,score);
	}

	@Override
	public String addCollege(String c_id, String college_name, String college_icon, int pici, String probility,
			int expect_line, String tags) {
		// TODO Auto-generated method stub
		return collegeDao.addCollege(c_id, college_name, college_icon, pici, probility, expect_line, tags);
	}

	@Override
	public Boolean deleteCollege(String c_id) {
		// TODO Auto-generated method stub
		return collegeDao.deleteCollege(c_id);
	}


	@Override
	public Boolean updateCollegeDetail(String cid, String college_name, String college_icon, String tags,
			String college_descrption, String job_rate) {
		// TODO Auto-generated method stub
		return collegeDao.updateCollegeDetail(cid, college_name, college_icon, tags, college_descrption, job_rate);
	}


	@Override
	public List<LinesBean> findAllLines() {
		// TODO Auto-generated method stub
		return collegeDao.findAllLines();
	}


	@Override
	public Boolean updateScoreLine(String id, String score) {
		// TODO Auto-generated method stub
		return collegeDao.updateScoreLine(id, score);
	}


	@Override
	public List<LinesBean> queryLine(String province,String year) {
		// TODO Auto-generated method stub
		return collegeDao.queryLine(province,year);
	}

}
