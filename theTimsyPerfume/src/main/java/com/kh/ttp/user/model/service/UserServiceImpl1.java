package com.kh.ttp.user.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.kh.ttp.user.model.dao.UserDao1;

public class UserServiceImpl1 implements UserService1 {

	@Autowired
	private UserDao1 userDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public boolean isUserAdult(int userNo) {
		return userDao.isUserAdult(sqlSession, userNo);
	}

	
	
}
