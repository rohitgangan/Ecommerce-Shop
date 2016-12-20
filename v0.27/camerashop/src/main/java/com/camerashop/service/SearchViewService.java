package com.camerashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.SearchViewDAOImplementation;
import com.camerashop.model.SearchView;

@Service
public class SearchViewService {
	
	@Autowired
	SearchViewDAOImplementation searchViewDaoImplementation;
	
	@Transactional
	public List<SearchView> listSearchView(){
		return searchViewDaoImplementation.listSearchView();
		
	} 
}
