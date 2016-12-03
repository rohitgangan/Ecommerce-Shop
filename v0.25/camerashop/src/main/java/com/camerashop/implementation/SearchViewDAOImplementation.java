package com.camerashop.implementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.model.SearchView;
@Repository
public class SearchViewDAOImplementation {
	@Autowired
	private SessionFactory sessionFactory;
	
	public List<SearchView> listSearchView() {
		// TODO Auto-generated method stub
		@SuppressWarnings("unchecked")
		List<SearchView> searchViewList = this.sessionFactory.getCurrentSession().createQuery("from SearchView").getResultList();
		return searchViewList;
	}

}
