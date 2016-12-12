package com.camerashop.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.SupplierActivation;
import com.camerashop.model.UserDetails;
import com.camerashop.service.CategoryService;
import com.camerashop.service.NewSupplierService;

@Controller
public class NewSupplierController {
	@Autowired
	private NewSupplierService newSupplierService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private MailSender mailSender;
	
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
	public ModelAndView ActivateSuppliers(@ModelAttribute("supplierActivation") SupplierActivation supplierActivation, @PathVariable("userId") int userId,HttpSession session){
		
		ModelAndView model = new ModelAndView("supplierActivation");
		
		this.newSupplierService.activateSupplier(userId);
		
		session.setAttribute("emailId", newSupplierService.getById(userId).getEmailId());
		String emailId = (String) session.getAttribute("emailId");
		System.out.println("email Id:"+ emailId );
		SimpleMailMessage email = new SimpleMailMessage();
		email.setTo(emailId);
		email.setSubject("Welocme to Primes and Zooms");
		email.setText("Your account has been activated successfully..Login to your account for sell products on Primes & Zooms");
		
		mailSender.send(email);
		model.addObject("listCategory",this.categoryService.listCategory());
		/*model.addObject("sGson", sGson);*/
		model.addObject("supplierActivate", this.newSupplierService.gsonSupplierActivate());

		return model;
		
	}
}
