package com.stsboard.testlist;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class JqueryAjaxController {
	
	@GetMapping("/JqueryAjax")
	public String JqueryAjax() {
		
		return "/testList/JqueryAjax";
	}
	
	 @PostMapping("/idCheck")
	 @ResponseBody
	 public String idCheck(@RequestBody Map<String, Object> map){
		 System.out.println("여기는 idCheck Controller");
		 String userId = (String) map.get("userId");
		 String userPw = (String) map.get("userPw");
		 
		 System.out.println(userId);
		 System.out.println(userPw);
		 
	 return "1";
	 }
	 
	 

}
