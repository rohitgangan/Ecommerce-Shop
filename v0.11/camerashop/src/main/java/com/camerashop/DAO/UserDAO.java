package com.camerashop.DAO;

import com.camerashop.model.UserDetails;

public interface UserDAO {
	public void saveOrUpdateUser(UserDetails userDetails);
}
