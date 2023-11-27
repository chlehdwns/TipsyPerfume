package com.kh.ttp.product_mjy.model.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.product.model.vo.CartVO;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.WishlistVO;
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
	public int countProductStock(int pdtNo) {
		return productDao.countProductStock(sqlSession, pdtNo);
	}
	
	@Override
	public int countWishOne(WishlistVO wishlist) {
		return productDao.countWishOne(sqlSession, wishlist);
	}
	
	@Override
	public int countCartOne(CartVO cart) {
		return productDao.countCartOne(sqlSession, cart);
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
		pMap.put("sort", sort);
		return productDao.selectAlcoholPdtList(sqlSession, pMap, rowBounds);
	}

	
	@Override
	public ProductSelectVO alcoholPdtDetail(int pdtNo) {  // pdtNo, A
		
		//HashMap<String, Object> pMap = new HashMap();
		//pMap.put("pdtNo", pdtNo);
		//pMap.put("pdtCteg", "A");
		return null;
	}



	@Override
	public ArrayList<CartVO> cartMain(int userNo) {
		return productDao.cartMain(sqlSession, userNo);
	}


	@Override
	public int insertWishOne(WishlistVO wishlist) {
		return productDao.insertWishOne(sqlSession, wishlist);
	}


	@Override
	public int deleteWishOne(WishlistVO wishlist) {
		return productDao.deleteWishOne(sqlSession, wishlist);
	}
	
	
	
	/***************** ajax 요청 *****************/
	@Override
	public boolean ajaxChangeWishOne(WishlistVO wishlist) {
		// 카운트 후 INSERT or DELETE 수행 => (result > 0)로 성공1은 true, 실패0은 false반환
		boolean isFilledHeart = false;
		if(countWishOne(wishlist) == 0) { // count 0이었을 때? 위시리스트 없음 => insert 성공 시 : 하트채우기(true)
			isFilledHeart = (insertWishOne(wishlist) > 0) ? true : false;
		} else { // count 1이었을 때? 위시리스트 있음 => delete 성공 시 : 하트비우기(false)
			isFilledHeart = (deleteWishOne(wishlist) > 0) ? false : true;
		}
		return isFilledHeart;
	}


	// stock있을 경우1 select해서1이면 => update
	// stock 있을 경우1 select해서 0이면 => insert
	@Override
	public int ajaxAddCartSingleQuan(CartVO cart) {
//		System.out.println(countProductStock(cart.getPdtNo()) + " : 재고 개수");
//		System.out.println(countCartOne(cart) + " : 카트에 있는지 카운트");
//		System.out.println(insertCartOne(cart) + " : 카트 insert");
//		System.out.println(updateCartOneQuantity(cart) + " : 카트 개수 업데이트");
		if(countProductStock(cart.getPdtNo()) > 0) { // 재고 1개 이상인지 조회(최종 재고 반영은 주문&결제 시 UPDATE)
			cart.setCartAddingQuantity(1);
			return (countCartOne(cart) == 0) ? insertCartOne(cart) : updateCartOneQuantity(cart);
		} else { // 재고가 없음
			return -1;
		}
	}



	@Override
	public int insertCartOne(CartVO cart) {
		return productDao.insertCartOne(sqlSession, cart);
	}


	@Override
	public int updateCartOneQuantity(CartVO cart) {
		return productDao.updateCartOneQuantity(sqlSession, cart);
	}



}