package com.kh.ttp.user.model.service;

import com.kh.ttp.user.model.vo.User;

public interface UserService {

	//로그인(select)
	User loginUser(User u);

	int insertUser(User u);

	

	
	
	//회원가입(insert)
	//int insertUser(User u);
	
	//회원정보 수정(update)
	//int updateUser(User u);
	
	//int deleteUser(String userId);
	
	//-----------
	
	//아이디 중복 체크 서비스 나중에하기
	//int idCheck(String checkId);
	//int emailCheck(String checkEmail);
	
	//-----------
	
	//메일 인증
	//void sendMail(CertVO certVo);
	//boolean validate(CertVO certVo);
	
	
	
}
