package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.bean.EProductBean;
import com.dao.EProductDao;
import com.service.FileUploadService;


@Controller
public class EProductController {

	@Autowired
	EProductDao productDao;
	
	@Autowired
	FileUploadService fileUploadService;
	
	@GetMapping("/eproductitem")
	public String eProductItem() {
		
		return "EProductItem";
	}
	
	@PostMapping("saveproduct")
	public String saveProduct(EProductBean productBean,@RequestParam("masterImage") MultipartFile masterImage) {
	
		System.out.println(masterImage.getOriginalFilename());
		fileUploadService.uploadProductImage(masterImage);
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
		productDao.deleteProduct(productId);
		return "redirect:/productlist";
	}
	
	@GetMapping("/searchproductbyname")
	public String searchProductByName() {
		return "DeleteProductByName";
	}
	
	@PostMapping("/deleteproductbyname")
	public String deleteProductByName(@RequestParam("productName") String productName) {
		productDao.deleteProductByName(productName);
		return "redirect:/productlist";
	}
	
	@GetMapping("/viewproduct")
	public String viewProduct(@RequestParam("productId") Integer productId,Model model) {
		
		EProductBean productBean = productDao.getProductDetails(productId);
		System.out.println(productBean);
		model.addAttribute("product",productBean);
		return "ViewProduct";
	}
}
