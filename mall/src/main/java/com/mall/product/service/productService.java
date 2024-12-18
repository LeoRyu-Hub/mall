package com.mall.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.mall.product.dao.productDao;
import com.mall.vo.order.orderInfoVO;
import com.mall.vo.product.cartVO;
import com.mall.vo.product.productInfoVO;

@Service
public class productService {
	
	@Autowired
	productDao dao;
	
	public List<productInfoVO> selectProductList(@ModelAttribute productInfoVO vo) throws Exception{
	return dao.selectProductList(vo);
	}
	
	public productInfoVO selectProductInfo(productInfoVO vo) throws Exception{
		return dao.selectProductInfo(vo);
	}
	
	public int addProduct(cartVO vo) throws Exception{
		return dao.addProduct(vo);
	}
	
	public cartVO selectCart(cartVO cvo) throws Exception{
		return dao.selectCart(cvo);
	}
	
	public int modifyQta(cartVO vo) throws Exception{
		return dao.modifyQta(vo);
	}
	
	public List<cartVO> selectCartList( cartVO vo) throws Exception{
		return dao.selectCartList(vo);
	}
	
	public int updateQtaCart(cartVO vo) throws Exception{
		return dao.updateQtaCart(vo);
	}
	
	public int removeFromCart(cartVO vo) throws Exception{
		return dao.removeFromCart(vo);
	}
	
	public List<cartVO> selectOrderList( cartVO vo) throws Exception{
		return dao.selectOrderList(vo);
	}
	
	public String createNewOrderNo(orderInfoVO vo) throws Exception{
		return dao.createNewOrderNo(vo);
	}
	
	public int insertOrderInfo(orderInfoVO vo) throws Exception{
		return dao.insertOrderInfo(vo);
	}
	
	public int insertOrderProductinfo(orderInfoVO vo) throws Exception{
		return dao.insertOrderProductinfo(vo);
	}
	
	public int deleteFromCart(orderInfoVO vo) throws Exception{
		return dao.deleteFromCart(vo);
	}
	
	public int setCartlist(cartVO vo) throws Exception{
		return dao.setCartlist(vo);
	}

}
