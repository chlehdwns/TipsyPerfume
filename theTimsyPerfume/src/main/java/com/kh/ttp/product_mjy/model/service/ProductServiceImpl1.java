package com.kh.ttp.product_mjy.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product_mjy.model.dao.ProductDao1;

@Service
public class ProductServiceImpl1 implements ProductService1 {

	@Autowired
	private ProductDao1 productDao;
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	
	
	@Override
	public int selectProductCount(String pdtCteg) {
		return productDao.selectProductCount(sqlSession, pdtCteg);
	}

	
	@Override
	public HashMap<String, Object> productMainList(String pdtCteg, PageInfo pi) {
		
		RowBounds rowBounds = new RowBounds(0, pi.getBoardLimit());
		
		HashMap<String, Object> pMap = new HashMap();
		
		pMap.put("pdtCteg", pdtCteg); // 식별자
		
		pMap.put("pMainListNew", productDao.productMainList(sqlSession, pMap, rowBounds)); // 최신순
				
		pMap.put("sort", "BestSeller");
		pMap.put("pMainListBestSeller", productDao.productMainList(sqlSession, pMap, rowBounds)); // 판매량순
		
		pMap.put("sort", "Popular");
		pMap.put("pMainListPopular", productDao.productMainList(sqlSession, pMap, rowBounds)); // 위시리스트순

		return pMap;
	}

	
	@Override
	public ArrayList<ProductSelectVO> selectPerfumePdtList(String sort, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		HashMap<String, Object> pMap = new HashMap();
		pMap.put("pdtCteg", "F");
		pMap.put("sort", sort);
		
		return productDao.selectPerfumePdtList(sqlSession, pMap, rowBounds);
	}

	
	@Override
	public ProductSelectVO perfumePdtDetail(int pdtNo) {  // pdtNo, F
		//HashMap<String, Object> pMap = new HashMap();
		//pMap.put("pdtNo", pdtNo);
		//pMap.put("pdtCteg", "F");
		return null;
	}

	
	@Override
	public ArrayList<ProductSelectVO> selectAlcoholPdtList(String sort, PageInfo pi) {
		
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset, pi.getBoardLimit());
		
		HashMap<String, Object> pMap = new HashMap();
		pMap.put("pdtCteg", "A");
		if(sort != null) pMap.put("sort", sort);
		
		return productDao.selectAlcoholPdtList(sqlSession, pMap, rowBounds);
	}

	
	@Override
	public ProductSelectVO alcoholPdtDetail(int pdtNo) {  // pdtNo, A
		
		//HashMap<String, Object> pMap = new HashMap();
		//pMap.put("pdtNo", pdtNo);
		//pMap.put("pdtCteg", "A");
		return null;
	}



}

