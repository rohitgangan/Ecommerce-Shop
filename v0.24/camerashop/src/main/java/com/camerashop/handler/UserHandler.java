package com.camerashop.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;
import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.Supplier;
import com.camerashop.model.UserDetails;
import com.camerashop.service.NewSupplierService;
import com.camerashop.service.UserService;

@Component
public class UserHandler {

	@Autowired
	public BillingAddress billingAddress;
	
	@Autowired
	public ShippingAddress shippingAddress;
	
	@Autowired
	public UserService userService;
	
	@Autowired
	public NewSupplierService newSupplierService;
	
	@Autowired
	public Supplier supplier;
	
	@Autowired
	public UserDetails userDetails;
	
	public UserDetails initFlow(){
		return new UserDetails();
		
	}

		public String validateDetails(UserDetails userDetails,MessageContext messageContext){
			String status = "success";
			String email_pattern = "^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\])|(([a-zA-Z\\-0-9]+\\.)+[a-zA-Z]{2,}))$";
			if(userDetails.getFirstName().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"firstName").defaultText("first name cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getLastName().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"lastName").defaultText("last name cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getUsername().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"username").defaultText("username cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getPassword().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"password").defaultText("first name cannot be Empty").build());
				status = "failure";
			}
			if(userDetails.getEmailId().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"emailId").defaultText("Email cannot be Empty").build());
				status = "failure";
			}
			else if(userDetails.getEmailId().matches(email_pattern)){
				
				status = "success";
			}
			else{
				messageContext.addMessage(new MessageBuilder().error().source(
						"emailId").defaultText("email format invalid").build());
				status="failure";
				
			}
			if(userDetails.getContactNo().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"contactNo").defaultText("COntact no cannot be Empty").build());
				status = "failure";
			}
			return status;
		}
		
		public String checkDuplicate(UserDetails userDetails,MessageContext messageContext){
			String status="success";
			List<UserDetails> userDetailList = userService.listUserDetails();
			for(UserDetails k:userDetailList){
				if(k.getEmailId().equals(userDetails.getEmailId())&& k.getUsername().equals(userDetails.getUsername())){
					messageContext.addMessage(new MessageBuilder().error().source(
							"username").defaultText("Username already exists").build());
					messageContext.addMessage(new MessageBuilder().error().source(
							"emailId").defaultText("Email already exists").build());
					status = "failure";
				}
				else if(k.getUsername().equals(userDetails.getUsername())){
					messageContext.addMessage(new MessageBuilder().error().source(
							"username").defaultText("Username already exists").build());
					status = "failure";
				}
				else if(k.getEmailId().equals(userDetails.getEmailId())){
					messageContext.addMessage(new MessageBuilder().error().source(
							"emailId").defaultText("Email already exists").build());
					status = "failure";
				}
							
			}
			return status;
			}
		
		public String addShippingAddress(ShippingAddress shippingAddress){
				this.shippingAddress.setStreetAddress1(shippingAddress.getStreetAddress1());
				this.shippingAddress.setStreetAddress2(shippingAddress.getStreetAddress2());
				this.shippingAddress.setCity(shippingAddress.getCity());
				this.shippingAddress.setDistrict(shippingAddress.getDistrict());
				this.shippingAddress.setPinCode(shippingAddress.getPinCode());
				this.shippingAddress.setState(shippingAddress.getState());
				this.shippingAddress.setLandmark(shippingAddress.getLandmark());
			return "success";
		}
		
		public String addBillingAddress(BillingAddress billingAddress){
			
			this.billingAddress.setStreetAddress1(billingAddress.getStreetAddress1());
			this.billingAddress.setStreetAddress2(billingAddress.getStreetAddress2());
			this.billingAddress.setCity(billingAddress.getCity());
			this.billingAddress.setDistrict(billingAddress.getDistrict());
			this.billingAddress.setPinCode(billingAddress.getPinCode());
			this.billingAddress.setState(billingAddress.getState());
			this.billingAddress.setLandmark(billingAddress.getLandmark());
			return "success";
				
		}
		
				
		public String saveOrUpdateUser(UserDetails userDetails, BillingAddress billingAddress, ShippingAddress shippingAddress){
			userService.saveOrUpdate(userDetails);
			
			shippingAddress.setUserDetails(userDetails);
			userDetails.setShippingAddress(shippingAddress);
			
			this.shippingAddress.setUserDetails(userDetails);
			
			//userService.addShippingAddress(shippingAddress);
			//userService.addBillingAddress(billingAddress);
			
			
			billingAddress.setUserDetails(userDetails);
			userDetails.setBillingAddress(billingAddress);
			this.billingAddress.setUserDetails(userDetails);
			
			
			userService.addShippingAddress(shippingAddress);
			userService.addBillingAddress(billingAddress);
			
			//userService.saveOrUpdate(userDetails);
			
			return "success";
			
		}
		
	
		public String addSupplierAddress(Supplier supplier){
			
			this.supplier.setSupplierCompanyName(supplier.getSupplierCompanyName());
			this.supplier.setAddress1(supplier.getAddress1());
			this.supplier.setAddress2(supplier.getAddress2());
			this.supplier.setCity(supplier.getCity());
			this.supplier.setDistrict(supplier.getDistrict());
			this.supplier.setPinCode(supplier.getPinCode());
			this.supplier.setState(supplier.getState());
			this.supplier.setLandmark(supplier.getLandmark());
			this.supplier.setComapanyUrl(supplier.getComapanyUrl());
			
			return "success";
			
			
		}
		
		public String validateSupplierDetails(Supplier supplier,MessageContext messageContext){
			String status = "success";
			
			if(supplier.getSupplierCompanyName().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"supplierCompanyName").defaultText("please provide your company name").build());
				status = "failure";
			}
			if(supplier.getAddress1().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"address1").defaultText("please provide your address").build());
				status = "failure";
			}
			if(supplier.getAddress2().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"address2").defaultText("please provide your address").build());
				status = "failure";
			}
			
			if(supplier.getCity().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"city").defaultText("please provide your city").build());
				status = "failure";
			}
			if(supplier.getDistrict().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"district").defaultText("please provide your district").build());
				status = "failure";
			}
			if(supplier.getPinCode().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"pinCode").defaultText("please provide your pin code").build());
				status = "failure";
			}
			if(supplier.getState().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"state").defaultText("please provide your state").build());
				status = "failure";
			}
			
			return status;
		}
		
		
		public String saveOrUpdateSupplier(UserDetails userDetails, Supplier supplier){
			
			newSupplierService.saveOrUpdate(userDetails);
			
			supplier.setUserDetails(userDetails);
			userDetails.setSupplier(supplier);
			
			this.supplier.setUserDetails(userDetails);
			
			newSupplierService.addSupplierAddress(supplier);
			
			return "success";
			
			
		}
}