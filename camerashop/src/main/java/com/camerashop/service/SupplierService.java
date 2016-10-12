package com.camerashop.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.camerashop.model.Category;
import com.camerashop.model.Supplier;
import com.camerashop.implementation.CategoryDAOImplementation;
import com.camerashop.implementation.SupplierDAOImplementation;
@Service
public class SupplierService {
	@Autowired
	private SupplierDAOImplementation supplierDAOImplementation;
	
	public void setSupplierDAO(SupplierDAOImplementation supplierDAOImplementation){
		this.supplierDAOImplementation = supplierDAOImplementation;
		}
	
	@Transactional
	public void addSupplier(Supplier supplier)
	{
		this.supplierDAOImplementation.createSupplier(supplier);
		
	}
	
	@Transactional
	public List<Supplier> listSupplier(){
		return this.supplierDAOImplementation.listSupplier();
	}
	
	@Transactional
	public String stringCategory()
	{
		return this.supplierDAOImplementation.stringSupplier();
		
	}
	
	@Transactional
	public Supplier getSupplierIdByName(String supplierName)
	{
		
		return supplierDAOImplementation.getIdByName(supplierName);
	}
}
