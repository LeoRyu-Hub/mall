package com.mall.user.dao;

import org.springframework.stereotype.Repository;

import com.mall.vo.user.userVO;

@Repository
public interface userDao {
	
	public int insertUser(userVO vo) throws Exception;
	public userVO selectUserInfo(userVO vo) throws Exception;

}
