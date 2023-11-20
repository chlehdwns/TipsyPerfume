package com.kh.ttp.user.model.service;

import com.kh.ttp.order.model.vo.Receiver;
import com.kh.ttp.user.model.vo.AuthVO;
import com.kh.ttp.user.model.vo.User;

public interface UserService {

	//로그인(select)
	User loginUser(User u);

	//회원가입(insert)
	int insertUser(User u);
	
	
	//회원정보 수정(update)
	int updateUser(User u);
	
	//회원 삭제(delete)
	int deleteUser(String userEmail);
	
	//-----------
	
	//아이디 중복 체크 서비스 
	int emailCheck(String checkEmail);

	

	
	
	//-----------
	
	//메일 인증
	void sendMail(AuthVO authVo);
	//boolean validate(CertVO certVo);

	

	//----------------------
	
	//마이페이지 보여주기
	//Receiver mypageUser(User u);
	Receiver selectReceiver(int userNo);

	

	
	
	
}
