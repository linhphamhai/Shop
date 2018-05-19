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
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name = "product")
public class Product {

	@Id
	@Column(name = "id")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "name")
	private String name;

	@Column(name = "description")
	private String description;

	@Column(name = "image")
	private String image;

	@Column(name = "price")
	private String price;

	@Column(name = "current_price")
	private String currentPrice;

	@Column(name = "quantity")
	private int quantity;

	@Column(name = "enabled")
	private boolean enabled;

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "category_id")
	private Category category;

	@ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	@JoinColumn(name = "supplier_id")
	private Supplier supplier;

	
	@JsonIgnore
	@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	@JoinTable(
			name = "promotion_detail", 
			joinColumns = { @JoinColumn(name = "product_id", referencedColumnName = "id") },
			inverseJoinColumns = {@JoinColumn(name = "promotion_id", referencedColumnName = "id")}
	)
	private Set<Promotion> promotions = new HashSet<Promotion>();

	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "product")
	@JsonIgnore
	private Set<BillDetail> billDetails = new HashSet<BillDetail>();

	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Product(int id, String name, String description, String image, String price, String currentPrice,
			int quantity, boolean enabled, Category category, Supplier supplier, Set<Promotion> promotions,
			Set<BillDetail> billDetails) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.image = image;
		this.price = price;
		this.currentPrice = currentPrice;
		this.quantity = quantity;
		this.enabled = enabled;
		this.category = category;
		this.supplier = supplier;
		this.promotions = promotions;
		this.billDetails = billDetails;
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
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

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public Set<Promotion> getPromotions() {
		return promotions;
	}

	public void setPromotions(Set<Promotion> promotions) {
		this.promotions = promotions;
	}

	public Set<BillDetail> getBillDetails() {
		return billDetails;
	}

	public void setBillDetails(Set<BillDetail> billDetails) {
		this.billDetails = billDetails;
	}

}
