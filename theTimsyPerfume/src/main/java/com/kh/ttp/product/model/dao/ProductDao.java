package com.kh.ttp.product.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.product.model.vo.FundingSelectVO;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;

@Repository
public class ProductDao {
	

	
	public ArrayList<ProductSelectVO> productMain(SqlSessionTemplate sqlSession, String pdtIdenKey) {
		return null; //@@@@@@@@@@@@null해둠!!!주의*******
	}

	public int drinkFundingInsert(SqlSessionTemplate sqlSession, ProductVO p) {
		return sqlSession.insert("productMapper.insertProduct", p);
	}

	public int drinkFundingSelect(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("productMapper.selectProduct");
	}

	public ArrayList<ProductVO> selectNewFundingListP() {
		return null;
	}

	public ArrayList<FundingSelectVO> selectFundingList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectFundingList");
		 
	}

	public int newDrinkFundingListCount(SqlSessionTemplate sqlSession) {
		return sqlSession.selectOne("productMapper.newDrinkFundingListCount");
	}

	public ArrayList<FundingSelectVO> newDrinkFundingList(SqlSessionTemplate sqlSession,RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("productMapper.newDrinkFundingList",null,rowBounds);
	}

	public FundingSelectVO newDrinkFundingDetail(SqlSessionTemplate sqlSession, int pdtNo) {
		
		return sqlSession.selectOne("productMapper.newDrinkFundingDetail",pdtNo);
	}

	public int increaseCount(SqlSessionTemplate sqlSession, int pdtNo) {
		return sqlSession.update("productMapper.increaseCount", pdtNo);
	}

	public ArrayList<FundingSelectVO> selectHotFundingList(SqlSessionTemplate sqlSession) {
		return (ArrayList)sqlSession.selectList("productMapper.selectHotFundingList");
	}

	public ArrayList<FundingSelectVO> hotDrinkFundingList(SqlSessionTemplate sqlSession, RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("productMapper.hotDrinkFundingList",null,rowBounds);
	}

	public FundingSelectVO selectDrinkFundingList(SqlSessionTemplate sqlSession, int pdtNo) {
		
		return sqlSession.selectOne("productMapper.selectDrinkFundingList",pdtNo);
	}

	public int updateDrinkFunding(SqlSessionTemplate sqlSession, ProductVO p) {
		return  ( sqlSession.update("productMapper.updateDrinkFundingP",p));
		
	}

	public int selectPdtNo(SqlSessionTemplate sqlSession, ProductVO p) {
		return sqlSession.selectOne("productMapper.selectPdtNo",p);
		 
	}
	

}
