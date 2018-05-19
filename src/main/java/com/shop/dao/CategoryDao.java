package com.shop.dao;

import java.util.List;

import com.shop.entity.Category;

public interface CategoryDao {
	
	public List<Category> getAllCategory();
	
	public Category getCategoryById(int id);
	
}
