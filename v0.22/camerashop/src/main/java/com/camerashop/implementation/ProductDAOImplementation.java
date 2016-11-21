package com.camerashop.implementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.ProductDAO;
import com.camerashop.model.Product;
import com.camerashop.model.ProductView;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
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

	@SuppressWarnings("unchecked")
	public String stringProduct() {
		// TODO Auto-generated method stub
		List<Product> productJList = this.sessionFactory.getCurrentSession().createQuery("from Product").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String productGson = gson.toJson(productJList);
		return productGson;
	}
	
	
@SuppressWarnings("unchecked")
public String stringViewProduct(){
	List<Product> productJList = this.sessionFactory.getCurrentSession().createQuery("from ProductView").getResultList();
	Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
	String productGson = gson.toJson(productJList);
	return productGson;
	
	
}	
	@SuppressWarnings( "unchecked" )
	public ProductView viewProduct(int productId){
		String query = "from ProductView WHERE productId= " + productId;
		List<ProductView> viewProduct = this.sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(viewProduct != null && !viewProduct.isEmpty())
		{
			
			return viewProduct.get(0);
		}
		else
		{
		return null;
		}
		
		
	}

	
	
	@SuppressWarnings("unchecked")
	public Product getById(int productId) {
		// TODO Auto-generated method stub
		String query = "from Product WHERE productId= " + productId;
		List<Product> ProductList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(ProductList != null && !ProductList.isEmpty())
		{
			
			return ProductList.get(0);
		}
		else
		{
		return null;
		}
	}

	public void delete(int productId) {
		// TODO Auto-generated method stub
		Product productDelete = new Product();
		productDelete.setProductId(productId);
		this.sessionFactory.getCurrentSession().delete(productDelete);
	}


@SuppressWarnings("unchecked")
public Product getBycategory(int categoryId) {
	// TODO Auto-generated method stub
	String query = "from Product WHERE categoryId= " + categoryId;
	List<Product> categoryProductList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
	if(categoryProductList != null && !categoryProductList.isEmpty())
	{
		
		return categoryProductList.get(0);
	}
	else
	{
	return null;
	}
}
}
