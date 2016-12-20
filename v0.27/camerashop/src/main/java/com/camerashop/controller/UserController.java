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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.UserDetails;
import com.camerashop.service.CategoryService;
import com.camerashop.service.UserService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/users")
	public String users(Model model)
	{
		
		UserDetails userDetails = new UserDetails();
		ShippingAddress shippingAddress = new ShippingAddress();
		BillingAddress billingAddress = new BillingAddress();
		userDetails.setShippingAddress(shippingAddress);
		userDetails.setBillingAddress(billingAddress);
		model.addAttribute("listCategory",this.categoryService.listCategory());
		model.addAttribute("user", userDetails);
		return "redirect:/registerFlow";
	}
	
		
	@RequestMapping("/user")
	public String addUser(@ModelAttribute("user") UserDetails userDetails)
	{
		this.userService.saveOrUpdate(userDetails);
		return "redirect:/";
		
	}
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	public String login(ModelMap model, Principal principal){
				return "login";
	}
	
	@RequestMapping(value="/login_failure", method = RequestMethod.GET)
	public String loginFailure(ModelMap model, Principal principal){
		model.addAttribute("error", "true");
			return "login";
	}
	
	
	@RequestMapping(value="/perform_logout",method = RequestMethod.GET)
	public String logout(HttpServletRequest request, HttpServletResponse response){
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		if(authentication!=null)
		{
			new SecurityContextLogoutHandler().logout(request, response, authentication);
		
			
		}
		
		return "redirect:/";			
	}
	
	@RequestMapping("/userprofile")
	public ModelAndView userProfile( @ModelAttribute UserDetails userDetails){
		 Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		  String username=authentication.getName();
		  
		  UserDetails user =userService.getByUsername(username);
		  Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String userGson = gson.toJson(user);
			System.out.println("user:"+userGson);
		ModelAndView model = new ModelAndView("userprofile");
		model.addObject("userGson",userGson);
		model.addObject("listCategory",this.categoryService.listCategory());
		
		return model;
		
		
	}
}
