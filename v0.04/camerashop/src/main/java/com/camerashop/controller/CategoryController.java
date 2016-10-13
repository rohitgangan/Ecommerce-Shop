package com.camerashop.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.Category;
import com.camerashop.service.CategoryService;

@Controller
public class CategoryController {
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/categories")
	public String Categories(Model model)
	{
		model.addAttribute("category" ,new Category());
				return "categories";
		
		
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
		model.addAttribute("categoryString",this.categoryService.stringCategory());
		//model.addAttribute("listCategory",this.categoryService.listCategory());
		return "categories";
		}
	
	@RequestMapping(value="/editCategory-{categoryId}", method = RequestMethod.GET)
	public String editCategory(Model model, @PathVariable("categoryId") int categoryId){
		model.addAttribute("category",categoryService.getCategoryById(categoryId));
		return "categories";
		
	}
	@RequestMapping(value="/deleteCategory-{categoryId}", method=RequestMethod.GET)	
	public String removeCategory(Model model, @PathVariable("categoryId") int categoryId){
		this.categoryService.delete(categoryId);
		return "redirect:/categories";
	}
		
}
