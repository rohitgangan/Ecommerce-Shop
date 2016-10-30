package com.camerashop.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.UserDAOImplementation;
import com.camerashop.model.Category;
import com.camerashop.model.UserDetails;


@Service

public class UserService {
	@Autowired
	public UserDAOImplementation userDAOImplementation;
	@Transactional
	public void saveOrUpdate(UserDetails userDetails)
	{
		userDAOImplementation.saveOrUpdateUser(userDetails);
		
	}
	
	@Transactional
	public List<UserDetails> listUserDetails(){
		return this.userDAOImplementation.listUserDetails();
	}
}


