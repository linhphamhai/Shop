package com.shop.daoimp;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.shop.dao.CategoryDao;
import com.shop.entity.Category;

@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao{
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Transactional
	public List<Category> getAllCategory() {
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Category").list();
	}

	@Transactional
	public Category getCategoryById(int id) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Category.class, id);
	}

}
