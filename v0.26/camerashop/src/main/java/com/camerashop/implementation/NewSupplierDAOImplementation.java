package com.camerashop.implementation;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import com.camerashop.model.Cart;
import com.camerashop.model.Supplier;
import com.camerashop.model.SupplierActivation;
import com.camerashop.model.User;
import com.camerashop.model.UserDetails;
import com.camerashop.model.UserRole;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
		user.setEnabled(false);
		user.setUserId(userDetails.getUserId());
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
		
	
		
		/*userDetails.getSupplier().setUserDetails(userDetails);
		session.saveOrUpdate(userDetails.getSupplier());*/
		
		session.saveOrUpdate(userDetails);
		session.flush();
		
	}

	public void activateSupplier(int userId) {
		// TODO Auto-generated method stub
		String query = "update User set enabled=true where userId=" +userId;
		this.sessionFactory.getCurrentSession().createQuery(query).executeUpdate();
		
		
		
		
	}
	
	
	public void addSupplierAddress(Supplier supplier){
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	
	@SuppressWarnings("unchecked")
	public UserDetails getById(int userId) {
		// TODO Auto-generated method stub
		String query = "from UserDetails WHERE userId= " + userId;
		List<UserDetails> supplierActivationList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(supplierActivationList != null && !supplierActivationList.isEmpty())
		{
			
			return supplierActivationList.get(0);
		}
		else
		{
		return null;
		}
	}
	
	@SuppressWarnings("unchecked")
	public List<UserDetails> listSupplier() {
		// TODO Auto-generated method stub
		List<UserDetails> supplierList = this.sessionFactory.getCurrentSession().createQuery("from UserDetails where roleId=2 and roleId=3").getResultList();
		return supplierList;
	}
	@SuppressWarnings("unchecked")
	public String stringSupplier() {
		// TODO Auto-generated method stub
		List<UserDetails> supplierJList = this.sessionFactory.getCurrentSession().createQuery("from UserDetails").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String supplierGson = gson.toJson(supplierJList);
		return supplierGson;
	}
	
	@SuppressWarnings("unchecked")
	public SupplierActivation stringSupplierActivate(){
		List<SupplierActivation> disabledUser = sessionFactory.getCurrentSession().createQuery("from SupplierActivation").getResultList();
		//System.out.println(disabledUser.get(0));
		if(disabledUser != null && !disabledUser.isEmpty())
		{
			
			return disabledUser.get(0);
		}
		else
		{
		return null;
		}
	}

	@SuppressWarnings("unchecked")
	public String gsonSupplierActivate(){
		List<SupplierActivation> supplierJson = this.sessionFactory.getCurrentSession().createQuery("from SupplierActivation").getResultList();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String sGson = gson.toJson(supplierJson);
		return sGson;
		
	}
		

	@SuppressWarnings("unchecked")
	public UserDetails getIdByName(String username) {
		// TODO Auto-generated method stub
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      username = authentication.getName(); //get logged in username
		String query = "from UserDetails WHERE username= '"+username+"'";
		List<UserDetails> SupplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
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
	public UserDetails getByRoleId() {
		// TODO Auto-generated method stub
		String query = "from UserDetails WHERE roleId = '2'";
		List<UserDetails> SupplierList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		if(SupplierList != null && !SupplierList.isEmpty())
		{
			
			return SupplierList.get(0);
		}
		else
		{
		return null;
		}
	}
	public void delete(int userId) {
		// TODO Auto-generated method stub
		UserDetails supplierDelete = new UserDetails();
		supplierDelete.setUserId(userId);
		this.sessionFactory.getCurrentSession().delete(supplierDelete);
	}
		
}