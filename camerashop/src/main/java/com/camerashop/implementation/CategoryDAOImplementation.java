package com.camerashop.implementation;
import com.camerashop.model.Category;
import com.google.gson.Gson;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.camerashop.DAO.CategoryDAO;

@Repository
public class CategoryDAOImplementation implements CategoryDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	public void createCategory(Category category) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	public List<Category> listCategory() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<Category> categoryList = this.sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		return categoryList;
	}
	
	@SuppressWarnings("unchecked")
	public String stringCategory() {
		// TODO Auto-generated method stub
		
		List<Category> categoryJList = this.sessionFactory.getCurrentSession().createQuery("from Category").getResultList();
		Gson gson = new Gson();
		String categoryGson = gson.toJson(categoryJList);
		return categoryGson;
	}
	
	

	
}
