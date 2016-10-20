package com.camerashop.implementation;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.ProductDetailsDAO;
import com.camerashop.model.Product;
import com.camerashop.model.ProductDetails;

@Repository
public class ProductDetailsDAOImplementation implements ProductDetailsDAO{
	
	private SessionFactory sessionFactory;
	public void saveOrUpdateProductDetails(ProductDetails productDetails) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		Product product = new Product();
		productDetails.setProductId(product.getProductId());
		session.saveOrUpdate(productDetails);
	}

}
