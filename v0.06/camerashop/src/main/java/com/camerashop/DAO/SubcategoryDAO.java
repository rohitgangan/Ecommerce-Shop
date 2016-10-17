package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.Subcategory;

public interface SubcategoryDAO {

public void createSubCategory(Subcategory subcategory);
public List<Subcategory> listSubCategory(); 
public String stringSubCategory();
public Subcategory getIdByName(String subCategoryName);
public Subcategory getById(int subCategoryId);
public void delete(int subCategoryId);
}
