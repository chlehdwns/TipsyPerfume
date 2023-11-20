package com.kh.ttp.community.pedia.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.product.model.vo.ProductVO;

@Repository
public class PediaDAO {

	public ArrayList<ProductVO> selectPediaList(SqlSessionTemplate sqlSession, String pdtCteg) {
		return (ArrayList)sqlSession.selectList("pediaMapper.selectPediaList", pdtCteg);
	}

}
