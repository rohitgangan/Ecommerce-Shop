package com.camerashop.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.Category;
import com.camerashop.model.Supplier;
import com.camerashop.service.CategoryService;
import com.camerashop.service.SupplierService;

@Controller
public class SupplierController {
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/suppliers")
	public String Suppliers(Model model)
	{
		model.addAttribute("supplier" ,new Supplier());
		//model.addAttribute("categoryString", this.categoryService.stringCategory());
		//model.addAttribute("cat", categoryService.stringCategory());
		return "suppliers";
		
		
	}
	
	@RequestMapping(value="/add/supplier", method=RequestMethod.POST)
	public String addSupplier(@ModelAttribute("supplier") Supplier supplier)
	{
		this.supplierService.addSupplier(supplier);
		return "redirect:/suppliers";

	}
	
	@RequestMapping(value= "/suppliers", method = RequestMethod.GET)
	public String listSupplier(Model model)
	{
		model.addAttribute("supplier", new Supplier());
		//model.addAttribute("listCategory",this.categoryService.listCategory());
		return "suppliers";
		
		
	}
	

		
	
	
	
}
