package com.kh.ttp.forward;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class forwardController {
	
	{
		System.out.println("크크킄ㅋ 너무 웃겨버려~");
	}
	@RequestMapping("fundingMain.list")
	public String fundingListPage() {
		return"funding/fundingList";
	}
	
	
	@RequestMapping("starDrinkFunding.list")
	public String starDrinkFundingListPage() {
		return "funding/starDrinkFundingList";
	}
	@RequestMapping("drinkEnrollForm.funding")
	public String enrollFormDrinkFunding() {
		return "funding/drinkEnrollForm";
	}
	
	
	@GetMapping("addressEnrollForm.re")
	public String search() {
		return "frags/addressEnrollForm";
	}
	
	
	
	

}
