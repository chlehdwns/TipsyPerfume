package com.kh.ttp.user.model.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.orderKinds.model.vo.Receiver;
import com.kh.ttp.user.model.vo.AuthVO;
import com.kh.ttp.user.model.vo.User;

@Repository
public class UserDao {

	public User loginUser(SqlSessionTemplate sqlSession, User u) {	
		//return sqlSession.selectOne("userMapper.loginUser", u);
		User us = sqlSession.selectOne("userMapper.loginUser", u);
		//System.out.println("dao: "+us);
		return us;
	}
	
	public int insertUser(SqlSessionTemplate sqlSession, User u) {
		//System.out.println(u);
		return sqlSession.insert("userMapper.insertUser", u);
	}
	
	public int insertUser1(SqlSessionTemplate sqlSession, User u) {
		//System.out.println(u);
		return sqlSession.insert("userMapper.insertUser2", u);
	}
	
	
	public int emailCheck(SqlSessionTemplate sqlSession, String checkEmail) {
		
		return sqlSession.selectOne("userMapper.emailCheck", checkEmail);
	}

	public void insertSecret(SqlSessionTemplate sqlSession, AuthVO authVo) {
		sqlSession.insert("memberMapper.insertSecret", authVo);
		
	}

	public Receiver selectReceiver(SqlSessionTemplate sqlSession, int userNo) {
		//System.out.println(userNo);
		return sqlSession.selectOne("userMapper.selectReceiver", userNo);
	}

	public int updateUser(SqlSessionTemplate sqlSession, User u) {
		
		return sqlSession.update("userMapper.updateUser", u);
	}

	public int deleteUser(SqlSessionTemplate sqlSession, String userEmail) {
		
		return sqlSession.update("userMapper.deleteUser", userEmail);
	}

	

	
	
	
	
	
}
