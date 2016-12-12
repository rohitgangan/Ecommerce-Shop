package com.camerashop.handler;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.stereotype.Component;

import com.camerashop.model.BillingAddress;
import com.camerashop.model.BuyNow;
import com.camerashop.model.ShippingAddress;

@Component
public class CartHandler 
{
	
	
	
	
	
	public BuyNow initFlow()
	   {
		return new BuyNow();
	   }
	 
	 
	 public String validateShippingDetails(ShippingAddress shippingAddress,MessageContext messageContext){
			String status = "success";
			
			if(shippingAddress.getStreetAddress1().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"streetAddress1").defaultText("please fill your address").build());
				status = "failure";
			}
			if(shippingAddress.getStreetAddress2().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"streetAddress2").defaultText("please fill your address").build());
				status = "failure";
			}
			if(shippingAddress.getCity().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"city").defaultText("please fill your city").build());
				status = "failure";
			}
			if(shippingAddress.getDistrict().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"District").defaultText("please fill your district").build());
				status = "failure";
			}
			if(shippingAddress.getPinCode().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"pinCode").defaultText("please fill your pin code").build());
				status = "failure";
			}
			
			if(shippingAddress.getLandmark().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"landmark").defaultText("please fill your landmark").build());
				status = "failure";
			}
			return status;
		}
	 
	 public String validateBillingDetails(BillingAddress billingAddress,MessageContext messageContext){
			String status = "success";
			
			if(billingAddress.getStreetAddress1().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"streetAddress1").defaultText("please fill your address").build());
				status = "failure";
			}
			if(billingAddress.getStreetAddress2().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"streetAddress2").defaultText("please fill your address").build());
				status = "failure";
			}
			if(billingAddress.getCity().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"city").defaultText("please fill your city").build());
				status = "failure";
			}
			if(billingAddress.getDistrict().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"District").defaultText("please fill your district").build());
				status = "failure";
			}
			if(billingAddress.getPinCode().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"pinCode").defaultText("please fill your pin code").build());
				status = "failure";
			}
			
			if(billingAddress.getLandmark().isEmpty()){
				messageContext.addMessage(new MessageBuilder().error().source(
						"landmark").defaultText("please fill your landmark").build());
				status = "failure";
			}
			return status;
		}
	
}
