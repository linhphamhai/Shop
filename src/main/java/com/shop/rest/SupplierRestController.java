package com.shop.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.shop.entity.Category;
import com.shop.entity.Supplier;
import com.shop.serviceimp.CategoryServiceImpl;
import com.shop.serviceimp.SupplierSerivceImpl;

@RestController
@RequestMapping("supplier-api")
public class SupplierRestController {

	
	@Autowired
	private SupplierSerivceImpl supplierService;
	
	@RequestMapping(method = RequestMethod.GET, value = "get-all")
	public List<Supplier> getAllSupplier(){
		return supplierService.getAllSupplier();
	}
}
