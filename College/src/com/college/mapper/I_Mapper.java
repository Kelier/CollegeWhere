package com.college.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.college.beans.CollegeBean;
import com.college.beans.CollegeDetail;
import com.college.beans.LinesBean;
import com.college.beans.UserBean;


public interface I_Mapper {
	
	
	
	//�û���¼
	@Select("select uid from tb_user where mobile=#{0} and password=#{1}")
	String userLogin(String mobile,String password);
	//�����û��ǳ�
	@Select("select nickname from tb_user where uid=#{0}")
	String userNick(String uid);
	//����û��Ƿ����
	@Select("select * from tb_user where mobile=#{0}")
	Boolean checkUser(String mobile);
	//����û���uid
	@Select("select * from tb_user where uid=#{0}")
	Boolean checkUid(String uid);
	//�����û�
	@Insert("insert tb_user(uid,mobile,password,nickname) values(#{0},#{1},#{2},#{3})")
	Boolean addUser(String uid,String mobile,String password,String nickname);
	
	//�����û���Ϣ
	@Update("update tb_user set nickname=#{1},subject=#{2},avatar=#{3},gender=#{4},province=#{5},score=#{6} where uid=#{0}")
	Boolean updateUser(String uid,String nickname,String subject,String avatar,String gender,String province,String score);
	
	//ɾ���û�
	@Delete("delete from tb_user where uid=#{0}")
	Boolean deleteUser(String uid);
	
	//��ѯĳ���û���Ϣ
	@Select("select * from tb_user where nickname like #{0} order by score desc")
	List<UserBean> queryUser(String nickname);
	
	//�õ��û�������Ϣ
	@Select("select * from tb_user where uid like #{0}")
	List<UserBean> getSingleInfo(String uid);
	
	//��������û�
	@Select("select * from tb_user order by score desc")
	List<UserBean> findUser();
	
	
	//����T���
	@Select("select * from tb_admin where c_admin_name=#{0} and c_admin_pass=#{1}")
	Boolean adminlogin(String a_name,String a_pass);
	//����T���У�
	@Select("select * from tb_admin where c_admin_name=#{0}")
	Boolean checkexist(String a_name);


	//��ȡ��ѧ����
	@Select("select * from tb_college_detail_message where c_id=#{0} ")
	List<CollegeDetail> getCollegeDetail(String cid);
	//����ԺУ��Ϣ
	@Update("update tb_college tc,tb_college_detail_message dm set tc.college_name=#{1},tc.college_icon=#{2},tc.tags=#{3},dm.college_descrption=#{4},dm.half_year_employment_ratio=#{5} where tc.c_id=dm.c_id and tc.c_id=#{0}")
	Boolean updateCollegeDetail(String c_id,String college_name,String college_icon,String tags,String college_descrption,String job_rate);

	//��ȡԺУ
	@Select("select distinct tc.* from tb_college tc,tb_college_detail_message dm where tc.expect_line>#{score} and tc.c_id=dm.c_id and dm.address like #{province} and  tc.tags like #{tag}")
	List<CollegeBean> queryCollege(@Param("province")String province,@Param("tag")String tag,@Param("score")int score);
	
	
	//����ԺУ
	@Select("select * from tb_college_detail_message where c_id=#{0}")
	Boolean checkCid(String c_id);
	
	@Insert("insert into tb_college_detail_message(c_id) values(#{0})")
	Boolean addCollegeDetail(String c_id);
	@Insert("insert into tb_college(c_id) values(#{0})")
	Boolean addCollege(String c_id);
	@Update("update tb_college set college_name=#{college_name},college_icon=#{college_icon},pici=#{pici},expect_line=#{expect_line},tags=#{tags} where c_id=#{c_id}")
	Boolean updateCollege(@Param("c_id")String c_id,@Param("college_name")String college_name,@Param("college_icon")String college_icon,@Param("pici")int pici,@Param("expect_line")int expect_line,@Param("tags")String tags);
	
	//ɾ��ԺУ
	@Delete("delete from tb_college_detail_message where c_id=#{0}")
	Boolean deleteCollege(String c_id);
	
	//��������
	@Insert("insert into tb_province_bath_score_line(province,year,type,bath,score) values(#{0},#{1},#{2},#{3},#{4})")
	Boolean insertData(String province,String year,String type,String bath,String score);
	
	//����������Ϣ
	@Select("select * from tb_province_bath_score_line order by year desc")
	List<LinesBean> findAllLines();
	//��������
	@Select("select * from tb_province_bath_score_line where province like #{0} and year like #{1} order by year desc")
	List<LinesBean> queryLine(String province,String year);
	//��������
	@Update("update tb_province_bath_score_line set score=#{1} where id=#{0}")
	Boolean updateScoreLine(int id,String score);
	
	//�����û���Ƭ
	@Update("update  tb_user set avatar=#{1} where uid=#{0}")
	Boolean modifyPath(String uid,String fileName);
}