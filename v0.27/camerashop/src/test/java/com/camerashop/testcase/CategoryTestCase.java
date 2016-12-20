package com.camerashop.testcase;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.DAO.CategoryDAO;
import com.camerashop.implementation.CategoryDAOImplementation;
import com.camerashop.model.Category;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.junit.Assert;

public class CategoryTestCase {
	
	@Autowired
	static
	AnnotationConfigApplicationContext context;
	
	@Autowired
	Category category;
	
	@Autowired
	CategoryDAOImplementation categoryDAOImplementation;
	
	/*@Autowired
	SessionFactory sessionFactory;*/
	
	@BeforeClass
	public static void init(){
			context = new AnnotationConfigApplicationContext("src//main//webapp//WEB-INF//application-context.xml");
			context.scan("com.camerashop");
			
			
			/*Category category = (Category) context.getBean("category");
			CategoryDAO categoryDAO= (CategoryDAO) context.getBean("categoryDAO");*/
		
	}
	
	@Test
	public void createCategoryTestCase(){
		category.setCategoryId(105);
		category.setCategoryName("Lenses");
		category.setCategoryDescription("This is Desription");
		categoryDAOImplementation.createCategory(category);
		/*Boolean status = categoryDAO.createCategory(category);
		Assert.assertEquals("Create Category Test Case", true, status);*/
	
		List<Category> categoryList = categoryDAOImplementation.listCategory();
		
		Assert.assertEquals(1, categoryList.size());
	}
	
	/*@Transactional
	public boolean createCategory(Category category){
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (HibernateException e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
		
		
	}*/
}
