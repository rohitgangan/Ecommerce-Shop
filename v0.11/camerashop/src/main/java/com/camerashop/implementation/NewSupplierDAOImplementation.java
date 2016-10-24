package com.camerashop.implementation;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.model.Cart;
import com.camerashop.model.Supplier;
import com.camerashop.model.User;
import com.camerashop.model.UserDetails;
import com.camerashop.model.UserRole;
import com.google.gson.Gson;

@Repository
public class NewSupplierDAOImplementation {
	@Autowired
	private SessionFactory sessionFactory;
	public void saveOrUpdateSupplier(UserDetails userDetails) {
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
		userRole.setRoleId(2);
		session.saveOrUpdate(userRole);
		
		Cart cart = new Cart();
		cart.setCartId(user.getUserId());
		cart.setUserId(user.getUserId());
		session.saveOrUpdate(cart);
						
		
		
		userDetails.setRoleId(2);
		userDetails.setUserId(user.getUserId());
		userDetails.setCartId(cart.getCartId());
		
		userDetails.getBillingAddress().setUserDetails(userDetails);
		userDetails.getShippingAddress().setUserDetails(userDetails);
		session.saveOrUpdate(userDetails.getBillingAddress());
		session.saveOrUpdate(userDetails.getShippingAddress());
		
		
		session.saveOrUpdate(userDetails);
		session.flush();
		
	}

	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier() {
		// TODO Auto-generated method stub
		List<Supplier> supplierList = this.sessionFactory.getCurrentSession().createQuery("from UserDetails").getResultList();
		return supplierList;
	}
	@SuppressWarnings("unchecked")
	public String stringSupplier() {
		// TODO Auto-generated method stub
		List<Supplier> supplierJList = this.sessionFactory.getCurrentSession().createQuery("from UserDetails").getResultList();
		Gson gson = new Gson();
		String supplierGson = gson.toJson(supplierJList);
		return supplierGson;
	}
	@SuppressWarnings("unchecked")
	public Supplier getIdByName(String supplierName) {
		// TODO Auto-generated method stub
		String query = "from UserDetails WHERE userName= '"+supplierName+"'";
		List<Supplier> SupplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(SupplierList != null && !SupplierList.isEmpty())
		{
			
			return SupplierList.get(0);
		}
		else
		{
		return null;
		}
		
	}
	@SuppressWarnings("unchecked")
	public Supplier getById(int supplierId) {
		// TODO Auto-generated method stub
		String query = "from UserDetails WHERE roleId= " + 2;
		List<Supplier> SupplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(SupplierList != null && !SupplierList.isEmpty())
		{
			
			return SupplierList.get(0);
		}
		else
		{
		return null;
		}
	}
	public void delete(int supplierId) {
		// TODO Auto-generated method stub
		Supplier supplierDelete = new Supplier();
		supplierDelete.setSupplierId(supplierId);
		this.sessionFactory.getCurrentSession().delete(supplierDelete);
	}
		
}



