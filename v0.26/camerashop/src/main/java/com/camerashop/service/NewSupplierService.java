package com.camerashop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import com.camerashop.implementation.NewSupplierDAOImplementation;
import com.camerashop.model.Supplier;
import com.camerashop.model.SupplierActivation;
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
	public void addSupplierAddress(Supplier supplier){
		newSupplierDAOImplementation.addSupplierAddress(supplier);
	}
	
	@Transactional
	public void activateSupplier(int userId){
		newSupplierDAOImplementation.activateSupplier(userId);
	}
	
	@Transactional
	public String gsonSupplierActivate(){
		return this.newSupplierDAOImplementation.gsonSupplierActivate();
		
	}
	
	@Transactional
	public UserDetails getById(int userId){
		return newSupplierDAOImplementation.getById(userId);
		
	}
	
	@Transactional
	public SupplierActivation supplierActivate(){
		return newSupplierDAOImplementation.stringSupplierActivate();
		
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
