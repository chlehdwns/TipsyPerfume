package com.kh.ttp.product.model.service;

import com.kh.ttp.funding.model.vo.Funding;
import com.kh.ttp.product.model.vo.Product;
import com.kh.ttp.productCategory.model.vo.ProductCategory;
import com.kh.ttp.productFile.model.vo.ProductFile;
import com.kh.ttp.productOption.model.vo.ProductOption;

public interface ProductService {


	int drinkFundingInsert(Product p, ProductFile pf, ProductOption po, Funding f, ProductCategory pc);

}
