package com.shop.controller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shop.entity.Product;
import com.shop.serviceimp.ProductServiceImpl;

@Controller
@RequestMapping("/")
public class HomeController {
	
	@Autowired
	private ProductServiceImpl productService;
	private Logger logger = Logger.getLogger(HomeController.class);

	@GetMapping
	public String showHome(ModelMap model) {
		List<Product> lastestProduct = productService.getLastestProduct();
		System.out.println(lastestProduct.subList(3, 5).size());
		model.put("lastest1", lastestProduct.subList(0, 4));
		model.put("lastest2", lastestProduct.subList(4, 8));
		return "home";

	}
}
