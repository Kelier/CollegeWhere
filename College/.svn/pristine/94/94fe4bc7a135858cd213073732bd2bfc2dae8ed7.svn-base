package com.college.utils;

import java.io.InputStream;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




public class MyBatisUtils {
	
static public Object getMapper(String className){
	InputStream is= MyBatisUtils.class.getResourceAsStream("../../../myBatisConfig.xml");
	SqlSessionFactory sessionFactory=new SqlSessionFactoryBuilder().build(is);
	SqlSession sqlSession= sessionFactory.openSession(true);
	try {
		return  sqlSession.getMapper(Class.forName("com.college.mapper."+className));
	} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
}
}
