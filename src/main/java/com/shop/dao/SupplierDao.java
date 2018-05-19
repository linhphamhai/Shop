package com.shop.dao;

import java.util.List;

import com.shop.entity.Category;
import com.shop.entity.Supplier;

public interface SupplierDao {

	public List<Supplier> getAllSupplier();
	
	public Supplier getSupplierById(int id);
}
