package com.kh.ttp.community.pedia.model.service;

import java.util.ArrayList;

import com.kh.ttp.product.model.vo.ProductVO;

public interface PediaService {
	public ArrayList<ProductVO> selectPediaList(String pdtCteg);
	public ProductVO selectPediaInfo(int pdtNo);
}
