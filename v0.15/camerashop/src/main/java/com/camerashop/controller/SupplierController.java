package com.camerashop.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.Supplier;
import com.camerashop.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/suppliers")
	public String Suppliers(Model model)
	{
		model.addAttribute("supplier" ,new Supplier());
				return "suppliers";
		
		
	}
	
	@RequestMapping(value="/add/supplier", method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier)
	{
		this.supplierService.addSupplier(supplier);
		return "redirect:/";

	}
	
	@RequestMapping(value= "/suppliers", method = RequestMethod.GET)
	public String listSupplier(Model model)
	{
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("stringSupplier",this.supplierService.stringSupplier());
		return "suppliers";
			
	}
	
	@RequestMapping(value="/editSupplier-{supplierId}", method = RequestMethod.GET)
	public String editSupplier(Model model, @PathVariable("supplierId") int supplierId){
		model.addAttribute("supplier",supplierService.getSupplierById(supplierId));
		return "suppliers";
		
	}
	@RequestMapping(value="/deleteSupplier-{supplierId}", method=RequestMethod.GET)	
	public String removeSupplier(Model model, @PathVariable("supplierId") int supplierId){
		this.supplierService.delete(supplierId);
		return "redirect:/suppliers";
	}
	
	
}
