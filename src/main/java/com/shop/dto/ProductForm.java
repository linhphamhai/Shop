package com.shop.dto;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.web.multipart.MultipartFile;

public class ProductForm {

	private int id;
	private String name;
	private String description;
	private MultipartFile image;
	private String price;
	private String currentPrice;
	private int quantity;
	private int categoryId;
	private int supplierId;

	public ProductForm() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductForm(int id, String name, String description, MultipartFile image, String price, String currentPrice,
			int quantity, int categoryId, int supplierId) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.image = image;
		this.price = price;
		this.currentPrice = currentPrice;
		this.quantity = quantity;
		this.categoryId = categoryId;
		this.supplierId = supplierId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public MultipartFile getImage() {
		return image;
	}

	public void setImages(MultipartFile image) {
		this.image = image;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getCurrentPrice() {
		return currentPrice;
	}

	public void setCurrentPrice(String currentPrice) {
		this.currentPrice = currentPrice;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public int getSupplierId() {
		return supplierId;
	}

	public void setSupplierId(int supplierId) {
		this.supplierId = supplierId;
	}

}
