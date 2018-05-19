package com.shop.dao;

import java.util.List;

import com.shop.entity.Product;

public interface ProductDao {
	
	public List<Product> getLastestProduct();
	
	public Product getProductById(int id);
	
	public List<Product> getProductsByPage(int page, int quantity);
	
	public int getTotalProduct();
	
	public void addProduct(Product product);
	
}
