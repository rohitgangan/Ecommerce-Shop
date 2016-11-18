package com.camerashop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camerashop.model.ProductView;
import com.camerashop.service.CategoryService;
import com.camerashop.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class CameraShopController {
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("/")
	public String getHome(Model model)
	{
		
		
		model.addAttribute("stringProductView",this.productService.stringViewProduct());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		
		return "index";
	}

	@RequestMapping("home")
	public String home(Model model)
	{
		model.addAttribute("stringProductView",this.productService.stringViewProduct());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "index";
	}
}
