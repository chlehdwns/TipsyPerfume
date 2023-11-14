package com.kh.ttp.forward;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class forwardController {
	@RequestMapping("funding.list")
	public String fundingListPage() {
		return"funding/fundingList";
	}
	

}
