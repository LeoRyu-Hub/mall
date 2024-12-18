package com.mall.user.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.user.service.userService;
import com.mall.util.SessionUtil;
import com.mall.vo.user.userVO;

import jakarta.servlet.http.HttpServletRequest;



@Controller
public class userController {
	
	@Autowired
	userService service;
	
	@RequestMapping("/user/loginPage")
	public String loginPage() throws Exception{
		userVO vo = new userVO();
		return "/user/user_loginPage";
	}
	
	@RequestMapping("/user/login")
	@ResponseBody
	//slect로 id조회 후 일치여부 확인, 그 후 세션 할당
	public boolean login(@ModelAttribute userVO vo,
			HttpServletRequest request) throws Exception{
		
		userVO uservo = service.selectUserInfo(vo);
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		if(encoder.matches(vo.getUserPassword(),uservo.getUserPassword())) {
			uservo.setUserPassword("");
			SessionUtil.set(request,"USER",uservo);
			return true;
		}else {
			return false;
		}	
	}
	
	
	@RequestMapping("/user/join")
	public String join() throws Exception{
		userVO vo = new userVO();
		return "/user/user_join";
	}
	
	@RequestMapping("/user/reg")
	@ResponseBody
	public boolean reg(@ModelAttribute userVO vo) throws Exception{
		
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		vo.setUserPassword(encoder.encode(vo.getUserPassword()));
		
		int cnt = service.insertUser(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
		
		// userVO uvo =(userVO)SessionUtil
		
	}


}
