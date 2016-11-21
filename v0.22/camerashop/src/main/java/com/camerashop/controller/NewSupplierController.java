package com.camerashop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ProductView;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.SupplierActivation;
import com.camerashop.model.UserDetails;
import com.camerashop.service.CategoryService;
import com.camerashop.service.NewSupplierService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class NewSupplierController {
	@Autowired
	private NewSupplierService newSupplierService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/newsuppliers")
	public String users(Model model)
	{
		
		UserDetails userDetails = new UserDetails();
		ShippingAddress shippingAddress = new ShippingAddress();
		BillingAddress billingAddress = new BillingAddress();
		userDetails.setShippingAddress(shippingAddress);
		userDetails.setBillingAddress(billingAddress);
		model.addAttribute("newsupplier", userDetails);
		return "redirect:/supplierFlow";
	}
	
	@RequestMapping("/newsupplier")
	public String addUser(@ModelAttribute("newsupplier") UserDetails userDetails)
	{
		this.newSupplierService.saveOrUpdate(userDetails);
		return "redirect:/newsuppliers";
		
	}
	
	@RequestMapping("/supplierActivation")
	public String ActivateSupplier(Model model){
		
		model.addAttribute("supplierActivate", this.newSupplierService.gsonSupplierActivate());
		return "supplierActivation";
		
	}
	
	@RequestMapping(value="/ActivateSupplier-{userId}", method = RequestMethod.GET)
	public ModelAndView ActivateSuppliers(@ModelAttribute("supplierActivation") SupplierActivation supplierActivation, @PathVariable("userId") int userId){
		/*SupplierActivation supplierId = newSupplierService.supplierActivate();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String sGson = gson.toJson(supplierId);
		System.out.println(sGson);*/
		ModelAndView model = new ModelAndView("supplierActivation");
		this.newSupplierService.activateSupplier(userId);
		model.addObject("listCategory",this.categoryService.listCategory());
		/*model.addObject("sGson", sGson);*/
		model.addObject("supplierActivate", this.newSupplierService.gsonSupplierActivate());

		return model;

		
		
		
		
		
		
		
	}
}
