package com.shop.rest;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.shop.entity.Product;
import com.shop.serviceimp.ProductServiceImpl;

@Controller
@RequestMapping("product-api")
public class ProductRestController {
	
	@Autowired
	private ProductServiceImpl productService;
	

	
	@ResponseBody
	@RequestMapping(value = "get-by-page", produces = "application/json")
	public List<Product> getProduct (@RequestParam ("page") int page, @RequestParam ("max") int max){
		return productService.getProductsByPage(page, max);
	}
	
	@ResponseBody
	@RequestMapping(value = "get-size",  produces = MediaType.APPLICATION_JSON_VALUE)
	public Map getProduct (){
		Map responseMap = new HashMap();
		responseMap.put("size", productService.getTotalProduct());
		return  responseMap;
	}
	
	@ResponseBody
	@RequestMapping(value = "add-product", method = RequestMethod.POST)
	public Product addProduct (@ModelAttribute Product product){
		productService.addProduct(product);
		return product;
	}
}
