package com.shop.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.daoimp.CategoryDaoImpl;
import com.shop.entity.Category;
import com.shop.service.CategoryService;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService{

	@Autowired
	private CategoryDaoImpl categoryDao;
	
	public List<Category> getAllCategory() {
		return categoryDao.getAllCategory();
	}

	public Category getCategoryById(int id) {
		return categoryDao.getCategoryById(id);
	}

}
