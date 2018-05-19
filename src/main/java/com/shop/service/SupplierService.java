package com.shop.service;

import java.util.List;

import com.shop.entity.Supplier;

public interface SupplierService {

	public List<Supplier> getAllSupplier();
	
	public Supplier getSupplierById(int id);
}
