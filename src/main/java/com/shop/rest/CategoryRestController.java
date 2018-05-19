package com.shop.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.shop.entity.Category;
import com.shop.serviceimp.CategoryServiceImpl;

@RestController
@RequestMapping("category-api")
public class CategoryRestController {
	
	@Autowired
	private CategoryServiceImpl categoryService;
	
	@RequestMapping(method = RequestMethod.GET, value = "get-all")
	public List<Category> getAllCategory(){
		return categoryService.getAllCategory();
	}
	
}
