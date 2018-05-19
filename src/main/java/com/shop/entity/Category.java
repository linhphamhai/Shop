package com.shop.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "category")
public class Category {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "description")
	private String description;

	@Column(name = "image_url")
	private String imageUrl;

	@Column(name = "enabled")
	private boolean enabled;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "category_id")
	private Category rootCategory;

	@JsonIgnore
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "category", fetch = FetchType.LAZY)
	Set<Product> products = new HashSet<Product>();

	public Category() {
		
	}

	public Category(int id, String name, String description, String imageUrl, boolean enabled, Category rootCategory,
			Set<Product> products) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.imageUrl = imageUrl;
		this.enabled = enabled;
		this.rootCategory = rootCategory;
		this.products = products;
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

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Category getRootCategory() {
		return rootCategory;
	}

	public void setRootCategory(Category rootCategory) {
		this.rootCategory = rootCategory;
	}

	public Set<Product> getProducts() {
		return products;
	}

	public void setProducts(Set<Product> products) {
		this.products = products;
	}

}
