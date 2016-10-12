package com.camerashop.implementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.ProductDAO;
import com.camerashop.model.Product;
@Repository
public class ProductDAOImplementation implements ProductDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	public void createProduct(Product product) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(product);
		}

	@SuppressWarnings("unchecked")
	public List<Product> listProduct() {
		// TODO Auto-generated method stub
		List<Product> productList = this.sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		return productList;
	}

}
