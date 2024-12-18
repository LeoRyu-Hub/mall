package com.mall.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.user.dao.userDao;
import com.mall.vo.user.userVO;

@Service
public class userService {
	
	@Autowired
	userDao dao;
	
	public int insertUser(userVO vo) throws Exception{
		return dao.insertUser(vo);
	}
	
	public userVO selectUserInfo(userVO vo) throws Exception{
		return dao.selectUserInfo(vo);
	}

}
