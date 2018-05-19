package com.shop.service;

import java.util.List;

import com.shop.entity.Category;

public interface CategoryService {
	
	public List<Category> getAllCategory();

	public Category getCategoryById(int id);
}
