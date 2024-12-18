package com.mall.vo.order;

import java.util.List;

import com.mall.vo.product.cartVO;

import lombok.Data;

@Data
public class orderInfoVO {
	
	private String orderNo;
	private String userId;
	private String orderName;
	private String orderPhone;
	private String receiveName;
	private String receivePhone;
	private String orderAddr;
	private String paymentMethod;
	private String paymentAmount;
	private String orderDt;
	private String orderSt;
	private String request;
	private String newOrderNo;
	private List<cartVO> cartlist;

}
