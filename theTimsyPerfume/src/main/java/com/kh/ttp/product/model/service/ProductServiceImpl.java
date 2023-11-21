package com.kh.ttp.product.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.funding.model.dao.FundingDao;
import com.kh.ttp.funding.model.vo.Funding;
import com.kh.ttp.product.model.dao.ProductDao;
import com.kh.ttp.product.model.vo.FundingSelectVO;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;
import com.kh.ttp.productCategory.model.dao.ProductCategoryDao;
import com.kh.ttp.productCategory.model.vo.ProductCategory;
import com.kh.ttp.productFile.model.dao.ProductFileDao;
import com.kh.ttp.productFile.model.vo.ProductFile;
import com.kh.ttp.productOption.model.dao.ProductOptionDao;
import com.kh.ttp.productOption.model.vo.ProductOption;


@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	private FundingDao fundingDao;
	@Autowired
	private ProductDao productDao;
	@Autowired
	private ProductCategoryDao productCategoryDao;
	@Autowired
	private ProductFileDao productFileDao;
	@Autowired
	private ProductOptionDao productOptionDao;
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	@Override
	public int drinkFundingInsert(ProductVO p, ProductFile pf, ProductOption po, Funding f, ProductCategory pc) {
		    if(productCategoryDao.drinkFundingInsert(sqlSession,pc)>0) {
				int result=productCategoryDao.drinkFundingSelect(sqlSession);
				p.setPdtCategNo(result);
				//System.out.println(p);
				if(productDao.drinkFundingInsert(sqlSession,p)>0) {
					int pdtNo = productDao.drinkFundingSelect(sqlSession);
					pf.setPdtNo(pdtNo);
					po.setPdtNo(pdtNo);
					f.setPdtNo(pdtNo);
					
					productOptionDao.drinkFundingInsert(sqlSession,po);
					productFileDao.drinkFundingInsert(sqlSession,pf);
					fundingDao.drinkFundingInsert(sqlSession,f);
					
					
					
				
				
			}
		}
		    return 1;
		    
		   
		
		
	}

	@Override
	public ArrayList<ProductSelectVO> productMain(String pdtIdenKey) {
		return productDao.productMain(sqlSession, pdtIdenKey);
	}

	
	@Override
	public ArrayList<FundingSelectVO> selectNewFundingList() {
		return productDao.selectFundingList(sqlSession);
		
	}

	@Override
	public int newDrinkFundingListCount() {
		return productDao.newDrinkFundingListCount(sqlSession);
	}

	@Override
	public ArrayList<FundingSelectVO> newDrinkFundingList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return productDao.newDrinkFundingList(sqlSession,rowBounds);
	}

	@Override
	public FundingSelectVO newDrinkFundingDetail(int pdtNo) {
		return productDao.newDrinkFundingDetail(sqlSession,pdtNo);
	}

	@Override
	public int increaseCount(int pdtNo) {
		return productDao.increaseCount(sqlSession,pdtNo);
		
	}

	@Override
	public ArrayList<FundingSelectVO> selectHotFundingList() {
		return productDao.selectHotFundingList(sqlSession);
	}

	@Override
	public ArrayList<FundingSelectVO> hotDrinkFundingList(PageInfo pi) {
		int offset = (pi.getCurrentPage() - 1) * pi.getBoardLimit();
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return productDao.hotDrinkFundingList(sqlSession,rowBounds);
	}

	

}
