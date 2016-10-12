package com.camerashop.implementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.SubcategoryDAO;
import com.camerashop.model.Category;
import com.camerashop.model.Subcategory;
import com.camerashop.model.Supplier;

@Repository
public class SubcategoryDAOImplementation implements SubcategoryDAO{

	@Autowired
	private SessionFactory sessionFactory;
	public void createSubCategory(Subcategory subcategory) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(subcategory);
	}

	@SuppressWarnings("unchecked")
	public List<Subcategory> listSubCategory() {
		// TODO Auto-generated method stub
		List<Subcategory> subCategoryList = this.sessionFactory.getCurrentSession().createQuery("from Subcategory").getResultList();
		return subCategoryList;
	}

	public String stringSubCategory() {
		// TODO Auto-generated method stub
	
		return null;
	}

	@SuppressWarnings("unchecked")
	public Subcategory getIdByName(String subCategoryName) {
		// TODO Auto-generated method stub
		
		String query = "from Subcategory WHERE subCategoryName= '"+subCategoryName+"'";
		List<Subcategory> subCategoryList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(subCategoryList != null && !subCategoryList.isEmpty())
		{
			
			return subCategoryList.get(0);
		}
		else
		{
		return null;
		}
	}

	

}
