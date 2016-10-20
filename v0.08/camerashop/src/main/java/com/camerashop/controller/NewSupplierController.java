package com.camerashop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.UserDetails;
import com.camerashop.service.NewSupplierService;

@Controller
public class NewSupplierController {
	@Autowired
	private NewSupplierService newSupplierService;
	
	@RequestMapping("/newsuppliers")
	public String users(Model model)
	{
		
		UserDetails userDetails = new UserDetails();
		ShippingAddress shippingAddress = new ShippingAddress();
		BillingAddress billingAddress = new BillingAddress();
		userDetails.setShippingAddress(shippingAddress);
		userDetails.setBillingAddress(billingAddress);
		model.addAttribute("newsupplier", userDetails);
		return "newsuppliers";
	}
	
	@RequestMapping("/newsupplier")
	public String addUser(@ModelAttribute("newsupplier") UserDetails userDetails)
	{
		this.newSupplierService.saveOrUpdate(userDetails);
		return "redirect:/newsuppliers";
		
	}
}
