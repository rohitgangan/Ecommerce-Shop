package com.camerashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.ProductDAOImplementation;
import com.camerashop.model.Product;
import com.camerashop.model.ProductView;

@Service
public class ProductService {
	@Autowired
	private ProductDAOImplementation productDAOImplementation;
	public void setProductDAO(ProductDAOImplementation productDAOImplementation)
	{
		this.productDAOImplementation=productDAOImplementation;
	}
	
	@Transactional
	public void addProduct(Product product){
		this.productDAOImplementation.createProduct(product);
	
	}
	@Transactional
	public List<Product> listProduct(){
		return this.productDAOImplementation.listProduct();
		
	}
	
	@Transactional
	public String stringProduct()
	{
		return this.productDAOImplementation.stringProduct();
		
	}
	@Transactional
	public String stringViewProduct(){
		return this.productDAOImplementation.stringViewProduct();
		
		
	}
	
	@Transactional
	public ProductView viewProduct(int productId){
		return this.productDAOImplementation.viewProduct(productId);
		
	}
	
	@Transactional
	public Product getProductById(int productId){
		return productDAOImplementation.getById(productId);
		
	}
	
	@Transactional
	public void delete(int productId){
		productDAOImplementation.delete(productId);
		
	}
	
	@Transactional
	public Product getBycategory(int categoryId){
		return this.productDAOImplementation.getBycategory(categoryId);
		
	}
	
}
