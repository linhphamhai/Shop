package com.shop.daoimp;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.SupplierDao;
import com.shop.entity.Supplier;

@Repository("supplierDao")
public class SupplierDaoImpl implements SupplierDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public List<Supplier> getAllSupplier() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Supplier").list();
	}

	@Transactional
	public Supplier getSupplierById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Supplier.class, id);
	}

}
