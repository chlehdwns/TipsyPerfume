package com.kh.ttp.forward;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class forwardController {
	@RequestMapping("funding.list")
	public String fundingListPage() {
		return"funding/fundingList";
	}
	@RequestMapping("newDrinkFunding.list")
	public String newDrinkFundingListPage() {
		return "funding/newDrinkFundingList";
	}
	@RequestMapping("hotDrinkFunding.list")
	public String hotDrinkFundingListPage() {
		return "funding/hotDrinkFundingList";
	}
	@RequestMapping("starDrinkFunding.list")
	public String starDrinkFundingListPage() {
		return "funding/starDrinkFundingList";
	}
	@RequestMapping("drinkEnrollForm.funding")
	public String enrollFormDrinkFunding() {
		return "funding/drinkEnrollForm";
	}
	

}
