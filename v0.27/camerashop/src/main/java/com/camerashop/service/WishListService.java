package com.camerashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.camerashop.implementation.WishListDAOImplementation;
import com.camerashop.model.WishList;
@Service
public class WishListService {
	
	@Autowired
	private WishListDAOImplementation wishListDAOImplementation;
	
	@Transactional
	public void addToWishList(WishList wishList){
		this.wishListDAOImplementation.addToWishList(wishList);
	}
	
	@Transactional
	public List<WishList> getWishListByUserId(int userId){
		return wishListDAOImplementation.getWishListByUserId(userId);
		
	}
	
	@Transactional
	public void deleteWishListItem(int wishListId) {
		this.wishListDAOImplementation.deleteWishListItem(wishListId);
	}
}
