package com.camerashop.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.Category;
import com.camerashop.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/c")
	public String Categories(Model model)
	{
		//model.addAttribute("category" ,new Category());
		//model.addAttribute("categoryString", this.categoryService.stringCategory());
		model.addAttribute("cat", categoryService.stringCategory());
		return "demo";
		
		
	}
	
	@RequestMapping(value="/add/category", method=RequestMethod.POST)
	public String addCategory(@ModelAttribute("category") Category category)
	{
		this.categoryService.addCategory(category);
		return "redirect:/categories";

	}
	
	@RequestMapping(value= "/categories", method = RequestMethod.GET)
	public String listCategory(Model model)
	{
		model.addAttribute("category", new Category());
		//model.addAttribute("listCategory",this.categoryService.listCategory());
		return "categories";
		
		
	}
	

		
	
	
	
}
