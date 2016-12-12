package com.camerashop.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.UserDAOImplementation;
import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
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
	public void addShippingAddress(ShippingAddress shippingAddress){
		userDAOImplementation.addShippingAddress(shippingAddress);
	}
	
	@Transactional
	public void addBillingAddress(BillingAddress billingAddress){
		userDAOImplementation.addBillingAddress(billingAddress);
	}
	
	@Transactional
	public List<UserDetails> listUserDetails(){
		return this.userDAOImplementation.listUserDetails();
	}
	
	@Transactional
	public BillingAddress getBillingAddresById(int userId) {
		return this.userDAOImplementation.getBillingAddresById(userId);		
	}
	
	@Transactional
	public ShippingAddress getShippingAddresById(int userId) {
		return this.userDAOImplementation.getShippingAddresById(userId);		
	}
	
	@Transactional
	public UserDetails getByUsername(String username){
		return this.userDAOImplementation.getByUsername(username);
	
	}
}


