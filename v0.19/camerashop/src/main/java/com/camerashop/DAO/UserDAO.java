package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.UserDetails;

public interface UserDAO {
	public void saveOrUpdateUser(UserDetails userDetails);
	public void addShippingAddress(ShippingAddress shippingAddress);
	public void addBillingAddress(BillingAddress billingAddress);
	public List<UserDetails> listUserDetails();
}
