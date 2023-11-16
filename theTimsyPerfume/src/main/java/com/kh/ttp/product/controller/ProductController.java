package com.kh.ttp.product.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.ttp.funding.model.vo.Funding;
import com.kh.ttp.product.model.service.ProductService;
import com.kh.ttp.product.model.vo.ProductSelectVO;
import com.kh.ttp.product.model.vo.ProductVO;
import com.kh.ttp.productCategory.model.vo.ProductCategory;
import com.kh.ttp.productFile.model.vo.ProductFile;
import com.kh.ttp.productOption.model.vo.ProductOption;

@Controller
public class ProductController {

	@Autowired
	private ProductService productService;

	/**
	 * 상품 메인페이지 조회 기능
	 * @return
	 */
	@GetMapping("productMain.pr")
	public String productMain(@RequestParam (value="pdtIdenKey", defaultValue="M")String pdtIdenKey,
											 ModelAndView mv) { // Q.알아서 관리하니까 불변객체 자원소모는 신경 안써도 되나?
		
		ArrayList<ProductSelectVO> productListMain = productService.productMain(pdtIdenKey);
		
		mv.addObject("pdtIdenKey", pdtIdenKey); // 얘도 나중에 돌려줘야함
		
		
		
		System.out.println("저는 Product Controller예용 "); // common/errorPage  ${ errorMsg }
		mv.addObject("errorMsg", "상품 메인화면 이동에 실패했습니다")
		  .setViewName("common/errorPage");
		
		// pdtIdenKey 같이 넘겨줘야함 (식별자 보고 div띄워줄 것) 
		return "product/productMain";
	}
	
	
	@RequestMapping("insertDrink.fun")
	public String drinkFundinginsert(MultipartFile upfile,HttpSession session,Model model,String pdtName,String pdtIntro,String pdtDescription,String pdtShipping, int cuttingPrice,int pdtPrice,Date cuttingDate,String pdtManufac,String pdtGroup,String pdtIngredient,int pdtStock) {
		System.out.println(upfile);
		//System.out.println(pdtName);
		//System.out.println(pdtIntro);
		//System.out.println(pdtDescription);
		//System.out.println(pdtShipping);
		//System.out.println(cuttingPrice);
		//System.out.println(pdtPrice);
		//System.out.println(cuttingDate);
		//System.out.println(pdtManufac);
		//System.out.println(pdtGroup);
		//System.out.println(pdtIngredient);
		ProductVO p = new ProductVO();
		p.setPdtName(pdtName);
		p.setPdtIntro(pdtIntro);
		p.setPdtDescription(pdtDescription);
		p.setPdtShipping(pdtShipping);
		p.setPdtPrice(pdtPrice);
		p.setPdtIngredient(pdtIngredient);
		p.setPdtStock(pdtStock);
		ProductCategory pc = new ProductCategory();
		pc.setPdtManufac(pdtManufac);
		pc.setPdtGroup(pdtGroup);
		
		
		ProductFile pf = new ProductFile();
		
		ProductOption po = new ProductOption();
		
		Funding f = new Funding();
		f.setCuttingDate(cuttingDate);
		f.setCuttingPrice(cuttingPrice);
		
		if(!upfile.getOriginalFilename().equals("")) {
			pf.setPdtFileOrigin(upfile.getOriginalFilename());
			pf.setPdtFileUpload(saveFile(upfile,session));
		}
		productService.drinkFundingInsert(p,pf,po,f,pc);
		
		
		
		
		
		return "";
	}
	private String saveFile(MultipartFile upfile, HttpSession session) {
		String originName = upfile.getOriginalFilename();
		
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new java.util.Date());
		int ranNum = (int)(Math.random() * 9000) + 1000;
		
		String ext = originName.substring(originName.lastIndexOf("."));
		String changeName = currentTime + ranNum +ext;
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");
		
		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			
			e.printStackTrace();
		}
		return "/resources/uploadFiles/" + changeName;
	}

}
