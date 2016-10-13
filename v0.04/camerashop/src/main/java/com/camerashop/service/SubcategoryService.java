package com.camerashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.SubcategoryDAOImplementation;
import com.camerashop.model.Subcategory;

@Service
public class SubcategoryService {
	@Autowired
	private SubcategoryDAOImplementation subCategoryDAOImplementation;
	
	public void setSubCategory(SubcategoryDAOImplementation subCategoryDAOImplementation)
	{
			this.subCategoryDAOImplementation = subCategoryDAOImplementation;
		
		}
	
	@Transactional
	public void addSubCategory(Subcategory subCategory){
		this.subCategoryDAOImplementation.createSubCategory(subCategory);
		
	}
	
	@Transactional
	public List<Subcategory> listSubCategory(){
		return this.subCategoryDAOImplementation.listSubCategory();
		
	}
	
	@Transactional
	public String stringSubCategory()
	{
		return this.subCategoryDAOImplementation.stringSubCategory();
		
	}
	
	
	@Transactional
	public Subcategory getSubCategoryIdByName(String subCategoryName)
	{
		return subCategoryDAOImplementation.getIdByName(subCategoryName);
		
	}
}
