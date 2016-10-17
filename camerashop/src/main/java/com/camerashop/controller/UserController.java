package com.camerashop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.UserDetails;
import com.camerashop.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@RequestMapping("/users")
	public String users(Model model)
	{
		
		UserDetails userDetails = new UserDetails();
		ShippingAddress shippingAddress = new ShippingAddress();
		BillingAddress billingAddress = new BillingAddress();
		userDetails.setShippingAddress(shippingAddress);
		userDetails.setBillingAddress(billingAddress);
		model.addAttribute("user", userDetails);
		return "users";
	}
	
	@RequestMapping("/user")
	public String addUser(@ModelAttribute("user") UserDetails userDetails)
	{
		this.userService.saveOrUpdate(userDetails);
		return "redirect:/users";
		
	}
	
}
