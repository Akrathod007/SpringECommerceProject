package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.bean.EProductBean;
import com.dao.EProductDao;

@Controller
public class EProductController {

	@Autowired
	EProductDao productDao;
	
	@GetMapping("/eproductitem")
	public String eProductItem() {
		
		return "EProductItem";
	}
	
	@PostMapping("saveproduct")
	public String saveProduct(EProductBean productBean) {
	
		productDao.addProduct(productBean);
		return "redirect:/productlist";
	}
	
	@GetMapping("/productlist")
	public String productlist(Model model) {
	List<EProductBean> products = productDao.getAllProducts();
	
	model.addAttribute("products",products);
		return "EcomProductList";
	}
	
	@GetMapping("/deleteproduct")
	public String deleteProduct(@RequestParam("productId") Integer productId) {
		System.out.println("deleteProduct() =>"+productId);
		return "redirect:/productlist";
	}
}
