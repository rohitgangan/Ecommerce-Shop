package com.camerashop.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.Category;
import com.camerashop.model.Subcategory;
import com.camerashop.service.CategoryService;
import com.camerashop.service.SubcategoryService;

@Controller
public class SubcategoryController {
	
	@Autowired
	private SubcategoryService subCategoryService;
	
	@Autowired
	private CategoryService categoryService;

	@RequestMapping("/subcategories")
	public String Subcategories(Model model)
	{
		model.addAttribute("subcategory", new Subcategory());
		return "subcategories";
		
			}
	
	@RequestMapping(value="/add/subcategory", method=RequestMethod.POST)
	public String addSubCategory(@ModelAttribute("subcategory") Subcategory subcategory)
	{
	
		
		//categoryService.getCategoryIdByName(subcategory.getCategory().getCategoryName());
		Category category = categoryService.getCategoryIdByName(subcategory.getCategory().getCategoryName());
		categoryService.addCategory(category);
		subcategory.setCategory(category);
		subcategory.setCategoryId(category.getCategoryId());
		this.subCategoryService.addSubCategory(subcategory);
		return "redirect:/subcategories";

	}
	
	@RequestMapping(value= "/subcategories", method = RequestMethod.GET)
	public String listCategory(Model model)
	{
		model.addAttribute("subcategory", new Subcategory());
		model.addAttribute("listSubCategory",this.subCategoryService.listSubCategory());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "subcategories";
		
		
	}
}
