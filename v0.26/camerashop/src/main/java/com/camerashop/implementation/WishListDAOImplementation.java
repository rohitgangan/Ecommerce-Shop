package com.camerashop.implementation;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.camerashop.DAO.WishListDAO;
import com.camerashop.model.WishList;

@Repository
public class WishListDAOImplementation implements WishListDAO{

	
	@Autowired
	private SessionFactory sessionFactory;
	public void addToWishList(WishList wishList) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(wishList);
	}
	@SuppressWarnings("unchecked")
	public List<WishList> getWishListByUserId(int userId) {
		// TODO Auto-generated method stub
		String query = "from WishList WHERE userId= " + userId;
		List<WishList> wishList = sessionFactory.getCurrentSession().createQuery(query).getResultList();
		
		return wishList;
		
	}
	public void deleteWishListItem(int wishListId) {
		// TODO Auto-generated method stub
		WishList wishListDelete = new WishList();
		wishListDelete.setWishListId(wishListId);
		this.sessionFactory.getCurrentSession().delete(wishListDelete);
	}

}
