package com.college.controller;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

//import com.college.beans.User;
import com.college.dao.I_UserDao;
import com.college.service.I_User;
import com.college.service.impl.UserService;
import com.college.utils.MyBatisUtils;



public class MyBatisTest {
	
	public void test(){
		InputStream is= this.getClass().getResourceAsStream("../../../myBatisConfig.xml");
		SqlSessionFactory session=new SqlSessionFactoryBuilder().build(is);
		SqlSession sqlSession= session.openSession(true);
//		List<User> test = sqlSession.selectList("com.college.mapper.myBatisMapper.find");
//		for (User user : test) {
//			System.out.println(user.getUname()+","+user.getUpwd());
//		}
		
	}
	
	public void findOne(){
		InputStream is= this.getClass().getResourceAsStream("../../../myBatisConfig.xml");
		SqlSessionFactory session=new SqlSessionFactoryBuilder().build(is);
		SqlSession sqlSession= session.openSession(true);
//		User user = sqlSession.selectOne("com.college.mapper.myBatisMapper.findUserByUname","wan");
//		System.out.println(user.getUname()+","+user.getUpwd());	
	}
	
	public void delectOne(){
		InputStream is= this.getClass().getResourceAsStream("../../../myBatisConfig.xml");
		SqlSessionFactory session=new SqlSessionFactoryBuilder().build(is);
		SqlSession sqlSession= session.openSession(true);
		sqlSession.delete("com.college.mapper.myBatisMapper.delectUserByUname","fuck");
		System.out.println("delect OK");	
	}
	
	public void addUser(){
		InputStream is= this.getClass().getResourceAsStream("../../../myBatisConfig.xml");
		SqlSessionFactory session=new SqlSessionFactoryBuilder().build(is);
		SqlSession sqlSession= session.openSession(true);
//		User user=new User();
//		user.setUname("žžž");
//		user.setUpwd("696969");
//		sqlSession.insert("com.college.mapper.myBatisMapper.addUser",user);
//		System.out.println("addUser OK");	
	}
	
	public void updateUserByUname(){
		InputStream is= this.getClass().getResourceAsStream("../../../myBatisConfig.xml");
		SqlSessionFactory session=new SqlSessionFactoryBuilder().build(is);
		SqlSession sqlSession= session.openSession(true);
//		User user=new User();
//		user.setUname("wan");
//		user.setUpwd("666666");
//		sqlSession.update("com.college.mapper.myBatisMapper.updateUserByUname",user);
		System.out.println("update OK");	
	}
	@Test
	public void testUser(){
		InputStream is= MyBatisUtils.class.getResourceAsStream("../../../myBatisConfig.xml");
		SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(is);
		SqlSession sqlSession= sessionFactory.openSession(true);
		I_UserDao dao= sqlSession.getMapper(I_UserDao.class);
//		Boolean i=dao.queryUser("wan","666666");
//		System.out.println(i);
	}
}
