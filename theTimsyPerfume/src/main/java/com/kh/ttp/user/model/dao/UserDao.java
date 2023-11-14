package com.kh.ttp.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.user.model.vo.User;

@Repository
public class UserDao {

	

	public User loginUser(SqlSessionTemplate sqlSession, User u) {	
		return sqlSession.selectOne("userMapper.loginUser", u);
	}
	
	
	
	
}
