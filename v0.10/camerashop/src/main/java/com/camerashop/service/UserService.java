package com.camerashop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.UserDAOImplementation;
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
}
