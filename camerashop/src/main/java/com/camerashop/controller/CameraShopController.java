package com.camerashop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CameraShopController {
	
	@RequestMapping("/")
	public String getHome()
	{
		return "index";
	}
}
