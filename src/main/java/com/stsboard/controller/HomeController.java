package com.stsboard.controller;

import java.io.File;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;



@Controller
public class HomeController {
	
	@GetMapping("/")
	public String home() {
		
		return "home";
	}
	
	@PostMapping("/upload_image")
	public void update_action(MultipartFile[] upload_file, Model model) {
		
		
		String uploadFolder = "C:\\upload\\temp";
		System.out.println("여기는 업로드 이미지 에요.");
		for(MultipartFile multipartFile : upload_file) {
			System.out.println("포문 안쪽.");
			
			System.out.println("======================");
			System.out.println("업로드된 파일 이름: " + multipartFile.getOriginalFilename());
			System.out.println("업로드된 파일 크기: " + multipartFile.getSize());
			
			
			File saveFile = new File(uploadFolder,multipartFile.getOriginalFilename());
			
			try {
				multipartFile.transferTo(saveFile);
			}catch(Exception e) {
				System.out.println("파일저장 실패");
			}
		}
		return;
	}
	
}
