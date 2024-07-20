package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.ECartBean;
import com.bean.EProductBean;
import com.bean.EUserBean;
import com.dao.CartDao;

import jakarta.servlet.http.HttpSession;

@Controller
public class CartController {
	
	@Autowired
	CartDao cartDao;
	
	
	@GetMapping("addtocart")
	public String addToCart(@RequestParam("productId") Integer productId,HttpSession session) {
		EUserBean userBean = (EUserBean)session.getAttribute("user");//userId
		
		Integer userId = userBean.getUserId();
		System.out.println(userId);
		ECartBean cartBean = new ECartBean();
		
		cartBean.setProductId(productId);
		cartBean.setUserId(userId);
		
		cartDao.addToCart(cartBean);
		return "redirect:/userproducts";
	}
	
	@GetMapping("/mycart")
	public String myCart(HttpSession session,Model model) {
		EUserBean userBean  = (EUserBean) session.getAttribute("user");
		Integer userId = userBean.getUserId();
		
		List<EProductBean> products = cartDao.myCart(userId);
		model.addAttribute("products",products);
		return "MyCart";
	}
	
	@GetMapping("/removefromcart")
	public String myCart(@RequestParam("productId") Integer productId) {
		cartDao.deleteFromMyCart(productId);
		return "redirect:/mycart";
	}
}
