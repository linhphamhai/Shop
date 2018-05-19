package com.shop.serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shop.daoimp.SupplierDaoImpl;
import com.shop.entity.Supplier;
import com.shop.service.SupplierService;

@Service("supplierService")
public class SupplierSerivceImpl  implements SupplierService{
	
	@Autowired
	private SupplierDaoImpl supplierDao;
	
	public List<Supplier> getAllSupplier() {
		return supplierDao.getAllSupplier();
	}

	public Supplier getSupplierById(int id) {
		return supplierDao.getSupplierById(id);
	}

}
