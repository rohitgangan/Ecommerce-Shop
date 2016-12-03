package com.camerashop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.CartItemDAOImplementation;
import com.camerashop.model.CartItem;
import com.camerashop.model.UserDetails;

@Service
public class CartItemService {
	
	@Autowired
	private CartItemDAOImplementation cartDAOImplementation;
	
	@Transactional
	public void addToBuyNow(CartItem cartItem){
		this.cartDAOImplementation.addToBuyNow(cartItem);
	}
	
	@Transactional
	public UserDetails getIdByName(String username){
		return cartDAOImplementation.getIdByName(username);
		
	}
	
	@Transactional
	public void minusProductQuantity(int productId){
		cartDAOImplementation.minusProductQuantity(productId);
	}
	
	@Transactional
	public void addProductQuantity(int productId){
		cartDAOImplementation.addProductQuantity(productId);
	}
	
	@Transactional
	public CartItem getById(int cartItemId){
		return cartDAOImplementation.getById(cartItemId);
		
	}
}
