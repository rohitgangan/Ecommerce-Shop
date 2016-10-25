package com.camerashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.camerashop.model.Category;
import com.camerashop.implementation.CategoryDAOImplementation;
@Service
public class CategoryService {
	@Autowired
	private CategoryDAOImplementation categoryDAOImplementation;
	
	public void setCategoryDAO(CategoryDAOImplementation categoryDAOImplementation){
		this.categoryDAOImplementation = categoryDAOImplementation;
		}
	
	@Transactional
	public void addCategory(Category category)
	{
		this.categoryDAOImplementation.createCategory(category);
		
	}
	
	@Transactional
	public List<Category> listCategory(){
		return this.categoryDAOImplementation.listCategory();
	}
	
	@Transactional
	public String stringCategory()
	{
		return this.categoryDAOImplementation.stringCategory();
		
	}
	
	@Transactional
	public Category getCategoryIdByName(String categoryName)
	{
		
		return categoryDAOImplementation.getIdByName(categoryName);
	}
	
	@Transactional
	public Category getCategoryById(int categoryId){
		return categoryDAOImplementation.getById(categoryId);
		
	}
	
	@Transactional
	public void delete(int categoryId){
		categoryDAOImplementation.delete(categoryId);
		
	}
}
