package com.camerashop.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.camerashop.model.Category;
import com.camerashop.model.Product;
import com.camerashop.service.CategoryService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	
	@RequestMapping(value="/category", method=RequestMethod.POST)
	public String addCategory(@Validated @ModelAttribute("category") Category category, BindingResult result, Model model)
	{
		if(result.hasErrors())
		{
					
			model.addAttribute("categoryString",this.categoryService.stringCategory());
			return "categories";
		}
		else{
		this.categoryService.addCategory(category);
		return "redirect:/categories";
		}
	}
	
	@RequestMapping(value= "/categories", method = RequestMethod.GET)
	public String listCategory(Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryString",this.categoryService.stringCategory());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "categories";
		}
	
	@RequestMapping(value="/editCategory-{categoryId}", method = RequestMethod.GET)
	public String editCategory(Model model, @PathVariable("categoryId") int categoryId){
		model.addAttribute("category",categoryService.getCategoryById(categoryId));
		model.addAttribute("categoryString",this.categoryService.stringCategory());
		return "categories";
		
	}
	@RequestMapping(value="/deleteCategory-{categoryId}", method=RequestMethod.GET)	
	public String removeCategory(@PathVariable("categoryId") int categoryId){
		this.categoryService.delete(categoryId);
		return "redirect:/categories";
	}
		
	@RequestMapping("/all_categories")
	public ModelAndView viewCategory(@ModelAttribute("category") Category category){
			List<Category> categories = categoryService.listCategory();
			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String categoryGson = gson.toJson(categories);
			ModelAndView model = new ModelAndView("viewcategory");
			model.addObject("listCategory",this.categoryService.listCategory());
			model.addObject("categoryGson", categoryGson);
			return model;
			
		}
}
