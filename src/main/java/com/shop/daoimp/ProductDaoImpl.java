package com.shop.daoimp;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projection;
import org.hibernate.criterion.Projections;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.ProductDao;
import com.shop.entity.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao {

	@Autowired
	private SessionFactory sessionFactory;

	@Transactional
	public List<Product> getLastestProduct() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Product p ORDER BY p.id DESC").setMaxResults(8).list();
	}

	@Transactional
	public Product getProductById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Product product = session.get(Product.class, id);
		return product;
	}

	@Transactional
	public List<Product> getProductsByPage(int page, int quantity) {
		Session session = sessionFactory.getCurrentSession();
		List<Product> result = session.createQuery("from Product ORDER BY id DESC")
				.setFirstResult((page - 1) * quantity).setMaxResults(quantity).list();
		return result;
	}

	@Transactional
	public int getTotalProduct() {
		Session session = sessionFactory.getCurrentSession();
		int result = session.createCriteria(Product.class).list().size();
		System.out.println("----------------------------" + result);
		return result;
	}

	@Transactional
	public void addProduct(Product product) {
		Session session = sessionFactory.getCurrentSession();
		try {
			session.save(product);
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
