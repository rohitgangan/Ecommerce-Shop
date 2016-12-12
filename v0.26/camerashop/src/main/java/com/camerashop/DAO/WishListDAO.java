package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.WishList;

public interface WishListDAO {
	public void addToWishList(WishList wishList);
	public List<WishList> getWishListByUserId(int userId);
	public void deleteWishListItem(int wishListId);
}
