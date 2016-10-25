package com.camerashop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import com.camerashop.implementation.NewSupplierDAOImplementation;
import com.camerashop.model.UserDetails;

@Service
public class NewSupplierService {
	@Autowired
	public NewSupplierDAOImplementation newSupplierDAOImplementation;
	@Transactional
	public void saveOrUpdate(UserDetails userDetails)
	{
		newSupplierDAOImplementation.saveOrUpdateSupplier(userDetails);
		
	}
	
	@Transactional
	public List<UserDetails> listSupplier(){
		return this.newSupplierDAOImplementation.listSupplier();			
		}

	@Transactional
	public String stringSupplier(){
		return this.newSupplierDAOImplementation.stringSupplier();
		
	}
	
	@Transactional
	public UserDetails getSupplierIdByName(String username){
		return this.newSupplierDAOImplementation.getIdByName(username);
		
	}
	
	@Transactional
	public UserDetails getSupplierByRoleId(){
		return this.newSupplierDAOImplementation.getByRoleId();
		}
	
	@Transactional
	public void delete(int userId){
		newSupplierDAOImplementation.delete(userId);
	}
}
