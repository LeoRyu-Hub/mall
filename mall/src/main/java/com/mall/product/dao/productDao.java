package com.mall.product.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.vo.order.orderInfoVO;
import com.mall.vo.product.cartVO;
import com.mall.vo.product.productInfoVO;

@Repository
public interface productDao {
	
	public List<productInfoVO> selectProductList(@ModelAttribute productInfoVO vo) throws Exception;
	public productInfoVO selectProductInfo(productInfoVO vo) throws Exception;
	public int addProduct(cartVO vo) throws Exception;
	public cartVO selectCart(cartVO cvo) throws Exception;
	public int modifyQta(cartVO vo) throws Exception;
	public List<cartVO> selectCartList(@ModelAttribute cartVO vo) throws Exception;
	public int updateQtaCart(cartVO vo) throws Exception;
	public int removeFromCart(cartVO vo) throws Exception;
	public List<cartVO> selectOrderList(cartVO vo) throws Exception;
	public String createNewOrderNo(orderInfoVO vo) throws Exception;
	public int insertOrderInfo(orderInfoVO vo) throws Exception;
	public int insertOrderProductinfo(orderInfoVO vo) throws Exception;
	public int deleteFromCart(orderInfoVO vo) throws Exception;
	public int setCartlist(cartVO vo) throws Exception;
}
