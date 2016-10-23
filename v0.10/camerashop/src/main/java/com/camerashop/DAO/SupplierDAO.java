package com.camerashop.DAO;
import java.util.List;

import com.camerashop.model.Category;
import com.camerashop.model.Supplier;


public interface SupplierDAO {
	
	public void createSupplier(Supplier supplier);
	
	public List<Supplier> listSupplier();
	public String stringSupplier();
	public Supplier getIdByName(String supplierName);
	public Supplier getById(int supplierId);
	public void delete(int supplierId);
}
