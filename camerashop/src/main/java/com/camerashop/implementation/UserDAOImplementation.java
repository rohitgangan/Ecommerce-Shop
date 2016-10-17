package com.camerashop.implementation;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.UserDAO;
import com.camerashop.model.BillingAddress;
import com.camerashop.model.Cart;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.User;
import com.camerashop.model.UserDetails;
import com.camerashop.model.UserRole;

@Repository
public class UserDAOImplementation implements UserDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateUser(UserDetails userDetails) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		
		User user = new User();
		/*user.setUserId(userDetails.getUserId());
		System.out.println("user id is"+userDetails.getUserId());*/
		user.setUsername(userDetails.getUsername());
		user.setPassword(userDetails.getPassword());
		user.setEnabled(true);
		session.saveOrUpdate(user);
		
		UserRole userRole = new UserRole();
		userRole.setUserId(user.getUserId());
		userRole.setRoleId(1);
		session.saveOrUpdate(userRole);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
						
		
		
		userDetails.setRoleId(1);
		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		
		userDetails.getBillingAddress().setUserDetails(userDetails);
		userDetails.getShippingAddress().setUserDetails(userDetails);
		session.saveOrUpdate(userDetails.getBillingAddress());
		session.saveOrUpdate(userDetails.getShippingAddress());
		
		
		session.saveOrUpdate(userDetails);
		session.flush();
		
	}

}

