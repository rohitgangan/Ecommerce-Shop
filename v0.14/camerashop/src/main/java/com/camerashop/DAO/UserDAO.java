package com.camerashop.DAO;

import java.util.List;

import com.camerashop.model.UserDetails;

public interface UserDAO {
	public void saveOrUpdateUser(UserDetails userDetails);
	public List<UserDetails> listUserDetails();
}
