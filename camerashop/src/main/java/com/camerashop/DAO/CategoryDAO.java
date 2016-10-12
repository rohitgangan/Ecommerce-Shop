package com.camerashop.DAO;
import java.util.List;

import com.camerashop.model.Category;


public interface CategoryDAO {
	
	public void createCategory(Category category);
	
	public List<Category> listCategory();
	public String stringCategory();
	public Category getIdByName(String categoryName);
}
