package com.camerashop.implementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.CartItemDAO;
import com.camerashop.model.CartItem;
import com.camerashop.model.UserDetails;


@Repository
public class CartItemDAOImplementation implements CartItemDAO{
	@Autowired
	private SessionFactory sessionFactory;
	public void addToBuyNow(CartItem cartItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}
	
    	
     @SuppressWarnings("unchecked")
 	public UserDetails getIdByName(String username) {
 		// TODO Auto-generated method stub
 		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
 	      username = authentication.getName(); //get logged in username
 		String query = "from UserDetails WHERE username= '"+username+"'";
 		List<UserDetails> userList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
 		if(userList != null && !userList.isEmpty())
 		{
 			
 			return userList.get(0);
 		}
 		else
 		{
 		return null;
 		}


     }
     
     public void minusProductQuantity(int productId){
    	 String query = "update Product set quantity=quantity-1 where productId=" +productId;
 		this.sessionFactory.getCurrentSession().createQuery(query).executeUpdate();
     }
     
     public void addProductQuantity(int productId){
    	 String query = "update Product set quantity=quantity+1 where productId=" +productId;
 		this.sessionFactory.getCurrentSession().createQuery(query).executeUpdate();
     }
     
     @SuppressWarnings("unchecked")
	public CartItem getById(int cartItemId){
		
    	 String query = "from CartItem WHERE cartItemId=" +cartItemId;
  		List<CartItem> cartItemList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
  		if(cartItemList != null && !cartItemList.isEmpty())
  		{
  			
  			return cartItemList.get(0);
  		}
  		else
  		{
  		return null;
  		} 
    	
    	 
     }
     
     @SuppressWarnings("unchecked")
	public List<CartItem> getByCartItemId(int cartItemId){
 		
    	 String query = "from CartItem WHERE cartItemId=" +cartItemId;
  		List<CartItem> cartItemList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		return cartItemList;
  		
    	
    	 
     }
     
     public void placeOrder(int cartItemId){
    	 String query="update CartItem set flag=true where cartItemId=" +cartItemId;
    	 this.sessionFactory.getCurrentSession().createQuery(query).executeUpdate();
     }
     
     public void deleteCartItem(int cartItemId) {
 		// TODO Auto-generated method stub
 		CartItem cartItemDelete = new CartItem();
 		cartItemDelete.setCartItemId(cartItemId);
 		this.sessionFactory.getCurrentSession().delete(cartItemDelete);
 	}


	public void addToCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(cartItem);
	}


	@SuppressWarnings("unchecked")
	public List<CartItem> getCartListByUserId(int userId) {
		// TODO Auto-generated method stub
		String query = "from CartItem WHERE flag=false and userId= " + userId;
		List<CartItem> cartList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		
		return cartList;
	}

	@SuppressWarnings("unchecked")
	public List<CartItem> getOrdersListByUserId(int userId) {
		// TODO Auto-generated method stub
		String query = "from CartItem WHERE flag=true and userId= " + userId;
		List<CartItem> cartList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		
		return cartList;
	}
	
}
