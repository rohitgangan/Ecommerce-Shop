package com.camerashop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.NewSupplierDAOImplementation;
import com.camerashop.model.UserDetails;

@Service
public class NewSupplierService {
	@Autowired
	public NewSupplierDAOImplementation newSupplierDAOImplementation;
	@Transactional
	public void saveOrUpdate(UserDetails userDetails)
	{
		newSupplierDAOImplementation.saveOrUpdateSupplier(userDetails);
		
	}
}

