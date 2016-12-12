package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.CartItem;

public interface CartItemDAO {

	public void addToBuyNow(CartItem cartItem);
	public void addToCart(CartItem	cartItem);
	public List<CartItem> getCartListByUserId(int userId);
	public void deleteCartItem(int cartItemId);
}