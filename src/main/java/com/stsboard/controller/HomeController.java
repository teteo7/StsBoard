package com.stsboard.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;



@Controller
public class HomeController {
	
/*	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		return "home";
	}*/
	
	@GetMapping("/")
	public String home() {
		
		return "home";
	}
	
	 @PostMapping("/idCheck")
	 @ResponseBody
	 public String idCheck(@RequestBody Map<String, Object> map){
		 System.out.println("여기는 idCheck");
		 String userId = (String) map.get("userId");
		 String userPw = (String) map.get("userPw");
		 
		 System.out.println(userId);
		 System.out.println(userPw);
		 
	 
	 
	 return "1";
	 
	 }
	
	
	

	
	
	
}
