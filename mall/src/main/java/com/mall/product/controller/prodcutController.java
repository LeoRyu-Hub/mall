package com.mall.product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mall.product.service.productService;
import com.mall.util.SessionUtil;
import com.mall.vo.order.orderInfoVO;
import com.mall.vo.product.cartVO;
import com.mall.vo.product.productInfoVO;
import com.mall.vo.user.userVO;


@Controller
public class prodcutController {

	@Autowired
	productService service;

	@RequestMapping("/main")
	public String main() throws Exception {
		productInfoVO vo = new productInfoVO();
		String cd = vo.getProductCode();
		return "/main";
	}
	
	@RequestMapping("/product/cart")
	public String cart() throws Exception {
		productInfoVO vo = new productInfoVO();
		return "/product/product_cart";
	}
	
	@RequestMapping("/product/order")
	public String order() throws Exception {
		productInfoVO vo = new productInfoVO();
		return "/product/product_order";
	}

	@RequestMapping("/product/list")
	@ResponseBody
	public List<productInfoVO> getList(@ModelAttribute productInfoVO vo) throws Exception {

		List<productInfoVO> list = service.selectProductList(vo);
		return list;
	}

	@RequestMapping("/product/detail") // attribute 는 화면에서 던진 값을 받을 때, model 은 값을 다시 화면으로 던질 때
	public String view(@ModelAttribute productInfoVO vo, Model model) throws Exception {
		model.addAttribute("productCode", vo.getProductCode());

		return "product/product_detail";
	}

	@RequestMapping("/product/getInfo")
	@ResponseBody
	public productInfoVO getInfo(@ModelAttribute productInfoVO vo) throws Exception {

		vo = service.selectProductInfo(vo);

		return vo;
	}

	@RequestMapping("/product/add")
	@ResponseBody
	public boolean save(@ModelAttribute cartVO vo) throws Exception {
		
		userVO uservo = (userVO) SessionUtil.getAttribute("USER"); 

		vo.setUserId(uservo.getUserId()); // 1.vo에 아이디 넣기
		/*
		cartVO cvo = new cartVO();
		cvo.setUserId(uservo.getUserId()); // 2.cvo에 아이디 넣기(cvo에 id안들어감)
		cvo.setProductCode(vo.getProductCode());
		cvo = service.selectCart(cvo); // 3. 해당 id의 주문 조회후 주문정보데이터 cvo에 삽입
		int cnt =0;
		if (cvo!=null) { //4.cvo.productCode, vo.productCode 같으면 UPDATE실행
			cnt = service.modifyQta(cvo);
		} else {
			cnt = service.addProduct(vo);
		}
		*/
		
		int cnt = service.setCartlist(vo);
		
		if (cnt > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	@RequestMapping("/cart/list")
	@ResponseBody
	public List<cartVO> getCartList(@ModelAttribute cartVO vo) throws Exception {
		
		userVO uservo = (userVO) SessionUtil.getAttribute("USER"); 

		vo.setUserId(uservo.getUserId());
		
		List<cartVO> list = service.selectCartList(vo);
		
		return list;
	}
	
	@RequestMapping("/cart/update")
	@ResponseBody
	public boolean update(@ModelAttribute cartVO vo) throws Exception{
		
		int cnt = service.updateQtaCart(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	@RequestMapping("/cart/remove")
	@ResponseBody
	public boolean remove(@ModelAttribute cartVO vo) throws Exception{
		
		int cnt = service.removeFromCart(vo);
		if(cnt>0) {
			return true;
		}else {
			return false;
		}
	}
	
	
	@RequestMapping("/order/list")
	@ResponseBody
	public userVO getOrderList(@ModelAttribute cartVO vo) throws Exception {
		
		userVO uservo = (userVO) SessionUtil.getAttribute("USER"); 

		
		vo.setUserId(uservo.getUserId());
		
		List<cartVO> list = service.selectCartList(vo);  //장바구니 리스트
		
		uservo.setCartlist(list);
		
		return uservo;
	}
	
	@RequestMapping("/order/checkout")
	@ResponseBody
	public boolean inserOrderInfo(@ModelAttribute orderInfoVO vo) throws Exception {
		
		userVO uservo = (userVO) SessionUtil.getAttribute("USER"); 

		vo.setUserId(uservo.getUserId());
		vo.setOrderName(uservo.getUserName());
		vo.setOrderPhone(uservo.getPhone()); 
		
		String newOrderNo = service.createNewOrderNo(vo);
		vo.setOrderNo(newOrderNo);
		
		int cnt = service.insertOrderInfo(vo);
		int cnt1 = service.insertOrderProductinfo(vo);
		int cnt2 = service.deleteFromCart(vo);

		if (cnt > 0 && cnt1 > 0 && cnt2 > 0) {
			return true;
		} else {
			return false;
		}
	}

}
