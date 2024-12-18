package com.mall.vo.user;

import java.util.List;

import com.mall.vo.product.cartVO;

import lombok.Data;

@Data
public class userVO {
	
	private String userId;
	private String userName;
	private String email;
	private String phone;
	private String joinDt;
	private String addr;
	private String userPassword;

	private List<cartVO> cartlist;

}
