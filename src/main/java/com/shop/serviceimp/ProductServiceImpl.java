package com.shop.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.daoimp.ProductDaoImpl;
import com.shop.entity.Product;
import com.shop.service.ProductService;

@Service("productService")
public class ProductServiceImpl implements ProductService{
	@Autowired
	private ProductDaoImpl productDao;
	
	public List<Product> getLastestProduct() {
		return productDao.getLastestProduct();
	}

	public Product getProductById(int id) {
		return productDao.getProductById(id);
	}

	public List<Product> getProductsByPage(int page, int quantity) {
		return productDao.getProductsByPage(page, quantity);
	}

	public int getTotalProduct() {
		return productDao.getTotalProduct();
	}

	public void addProduct(Product product) {
		productDao.addProduct(product);
		
	}
	
	

}
