package com.camerashop.implementation;
import com.camerashop.model.Supplier;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.camerashop.DAO.SupplierDAO;

@Repository
public class SupplierDAOImplementation implements SupplierDAO{
	
	@Autowired
	private SessionFactory sessionFactory;
	public void createSupplier(Supplier supplier) {
		// TODO Auto-generated method stub
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	@SuppressWarnings("unchecked")
	public List<Supplier> listSupplier() {
		// TODO Auto-generated method stub
		List<Supplier> supplierList = this.sessionFactory.getCurrentSession().createQuery("from Supplier").getResultList();
		return supplierList;
	}
	public String stringSupplier() {
		// TODO Auto-generated method stub
		return null;
	}
	@SuppressWarnings("unchecked")
	public Supplier getIdByName(String supplierName) {
		// TODO Auto-generated method stub
		String query = "from Supplier WHERE supplierName= '"+supplierName+"'";
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
		
}
