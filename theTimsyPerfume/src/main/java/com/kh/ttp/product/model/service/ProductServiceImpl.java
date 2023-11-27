package com.kh.ttp.product.model.service;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.funding.model.dao.FundingDao;
import com.kh.ttp.funding.model.vo.Funding;
import com.kh.ttp.orderKinds.model.dao.ReceiverDao;
import com.kh.ttp.orderKinds.model.vo.Receiver;
import com.kh.ttp.product.model.dao.ProductDao;
import com.kh.ttp.product.model.vo.FundingSelectVO;
import com.kh.ttp.product.model.vo.OrderDetailVO;
import com.kh.ttp.product.model.vo.OrderVO;
import com.kh.ttp.product.model.vo.PayVO;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;
import com.kh.ttp.productCategory.model.dao.ProductCategoryDao;
import com.kh.ttp.productCategory.model.vo.ProductCategory;
import com.kh.ttp.productFile.model.dao.ProductFileDao;
import com.kh.ttp.productFile.model.vo.ProductFile;
import com.kh.ttp.productOption.model.dao.ProductOptionDao;
import com.kh.ttp.productOption.model.vo.ProductOption;
import com.kh.ttp.user.model.vo.User;


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
	@Autowired
	private ReceiverDao receiverDao;
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
	public int updateDrinkFunding(ProductVO p, ProductFile pf, ProductOption po, Funding f, ProductCategory pc) {
		if(productDao.updateDrinkFunding(sqlSession,p)>0) {
			int categNo = productDao.selectPdtNo(sqlSession,p);
			//System.out.println(categNo);
			pc.setPdtCategNo(categNo);
			productCategoryDao.updateDrinkFunding(sqlSession,pc);
			productOptionDao.updateDrinkFundingPO(sqlSession,po);
			fundingDao.updateDrinkFundingF(sqlSession,f);
			productFileDao.updateDrinkFundingPF(sqlSession,pf);
			
		}else {
			
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

	@Override
	public FundingSelectVO selectDrinkFundingList(int pdtNo) {
		return productDao.selectDrinkFundingList(sqlSession,pdtNo);
	}
	@Override
	public int deleteDrinkFunding(int pdtNo) {
		return productDao.deleteDrinkFunding(sqlSession,pdtNo);
	}
	@Override
	public int confirmFundingDrink(OrderDetailVO od, OrderVO o, User u, ProductVO p, PayVO pv,Funding f,Receiver r) {
		if(fundingDao.confirmFundingDrink(sqlSession,f)>0) {
			int result1= productDao.confirmFundingDrinkPV(sqlSession,pv);
			int result  = receiverDao.selectReceiverNo(sqlSession,r);
			int payNo = productDao.selectPayNo(sqlSession);
			o.setReceiverNo(result);
			int result2=productDao.confirmFundingDrinkO(sqlSession,o);
			int orderNo = productDao.selectOrderNo(sqlSession);
			od.setOrderNo(orderNo);
			od.setPayNo(payNo);
			int result3 = productDao.confirmFundingDrinkOD(sqlSession,od);
			int result4 = productDao.decreaseStock(sqlSession,p);
			if(result1*result*result2*result3 != 0) {
				return 1;
			}
			
		};
		return 0;
	}
	@Override
	public int insertReceiver(Receiver r) {
		receiverDao.insertReceiver(sqlSession,r);
		return 0;
	}

	

	

}
