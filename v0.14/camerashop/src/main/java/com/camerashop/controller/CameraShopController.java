package com.camerashop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.camerashop.service.CategoryService;

@Controller
public class CameraShopController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/")
	public String getHome(Model model)
	{
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "index";
	}
}
