package com.shop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shop.entity.Product;
import com.shop.serviceimp.ProductServiceImpl;

@Controller
@RequestMapping("product")
public class ProductController {

	@Autowired
	ProductServiceImpl productService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String showProductDetail(@RequestParam("id") int productId, ModelMap model) {
		Product product = productService.getProductById(productId);
		model.put("product", product);
		return "product-details";
	}
}
