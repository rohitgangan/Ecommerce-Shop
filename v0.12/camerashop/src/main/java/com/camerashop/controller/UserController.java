package com.camerashop.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
		return "redirect:/";
		
	}
	
	@RequestMapping("/login")
	public String login(ModelMap model, Principal principal){
				return "login";
	}
	
	@RequestMapping("/perform_logout")
	public String logout(HttpServletRequest request, HttpServletResponse response){
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication!=null)
		{
			new SecurityContextLogoutHandler().logout(request, response, authentication);
			
		}
		
		return "redirect:/";
		
		
	}
	
}
