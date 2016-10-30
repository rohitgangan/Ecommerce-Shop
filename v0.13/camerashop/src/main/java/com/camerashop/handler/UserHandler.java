package com.camerashop.handler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.binding.message.MessageContextErrors;
import org.springframework.stereotype.Component;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.ShippingAddress;
import com.camerashop.model.UserDetails;
import com.camerashop.service.UserService;

@Component
public class UserHandler {

	@Autowired
	public BillingAddress billingAddress;
	
	@Autowired
	public ShippingAddress shippingAddress;
	
	@Autowired
	public UserService userService;
	
	
	
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
}