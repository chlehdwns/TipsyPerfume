package com.kh.ttp.product_mjy.model.dao;

import java.util.ArrayList;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.kh.ttp.common.model.vo.PageInfo;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.WishlistVO;

@Repository
public class ProductDao1 {

	
	public int selectProductCount(SqlSessionTemplate sqlSession, String pdtCteg) {
		return sqlSession.selectOne("productMapper1.selectProductCount", pdtCteg);
	}

	/**
	 * 주류/향수 식별자(pdtCteg)를 받아 해당되는 상품을 각 정렬 기준별로 조회해 ArrayList(ProductSelectVO리터럴)로 반환한다<br>
	 * 최신순, 베스트셀러순, 위시리스트순으로 조회한다
	 * @param pMap	:<br>
	 * 주류/향수 식별자 key : "pdtCteg" & value : "A"(주류) "F"(향수)<br>
	 * 정렬기준 key : "sort" & value="BestSeller"(베스트셀러순) "Popular"(위시리스트순)<br>
	 * 미설정 시 최신순으로 조회되며, 가독성을 위해 "New"로 설정도 가능
	 * @param rowBounds : 페이지네이션을 위한 RowBounds객체
	 * @return
	 * 조회 결과가 담긴 ArrayList(ProductSelectVO리터럴)를 반환,<br>
	 * 초기화된 ProductSelectVO의 필드는 아래와 같다<br>
	 * int pdtNo(상품PK번호), String pdtName(상품명), String pdtManufac(브랜드 혹은 제조자명)<br>
	 * String pdtIntro(상품 간략 설명), String pdtDescription(상품 상세 설명),<br>
	 * String pdtImgSrc(제품 썸네일 이미지의 경로), float reviewAvg(제품 리뷰의 평균 별점)
	 */
	public ArrayList<ProductSelectVO> productMainList(SqlSessionTemplate sqlSession,
													  Map<String, Object> pMap,
													  RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("productMapper1.productSelectList", pMap, rowBounds);
	}

	//향수 전체조회
	public ArrayList<ProductSelectVO> selectPerfumePdtList(SqlSessionTemplate sqlSession, Map<String, Object> pMap, RowBounds rowBounds) {
		System.out.println("DAO에 넘어온 sort : " + pMap.get("sort"));
		return (ArrayList)sqlSession.selectList("productMapper1.productSelectList", pMap, rowBounds);
	}

	// 향수 디테일조회
	//public ProductSelectVO perfumePdtDetail(SqlSessionTemplate sqlSession, Map<String, Object> pMap) {
	//	return null;
	//}
	
	//주류 전체조회
	public ArrayList<ProductSelectVO> selectAlcoholPdtList(SqlSessionTemplate sqlSession, Map<String, Object> pMap, RowBounds rowBounds) {
		return (ArrayList)sqlSession.selectList("productMapper1.productSelectList", pMap, rowBounds);
	}

	/**
	 * 특정 유저가 한 상품에 위시리스트 추가한 내역이 있는지 조회(위시리스트 카운트)
	 */
	public int countWishOne(SqlSessionTemplate sqlSession, WishlistVO wishlist) {
		return sqlSession.selectOne("productMapper1.countWishOne", wishlist);
	}
	/**
	 * 위시리스트 추가
	 */
	public int insertWishOne(SqlSessionTemplate sqlSession, WishlistVO wishlist) {
		return sqlSession.insert("productMapper1.insertWishOne", wishlist);
	}

	/**
	 * 위시리스트 삭제
	 */
	public int deleteWishOne(SqlSessionTemplate sqlSession, WishlistVO wishlist) {
		return sqlSession.delete("productMapper1.deleteWishOne", wishlist);
	}


	// 주류 디테일조회
	//public ProductSelectVO alcoholPdtDetail(SqlSessionTemplate sqlSession, Map<String, Object> pMap) {
	//	return null;
	//}

}