package com.camerashop.handler;

import org.springframework.stereotype.Component;

import com.camerashop.model.BuyNow;

@Component
public class CartHandler 
{
	 public BuyNow initFlow()
	   {
		return new BuyNow();
	   }

}
