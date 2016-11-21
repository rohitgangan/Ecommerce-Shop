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
import com.camerashop.model.Subcategory;
import com.camerashop.service.CategoryService;
import com.camerashop.service.SubcategoryService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

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
	
	@RequestMapping(value="/subcategory", method=RequestMethod.POST)
	public String addSubCategory(@Validated @ModelAttribute("subcategory") Subcategory subcategory, BindingResult result, Model model)
	{
		if(result.hasErrors()){
			model.addAttribute("stringSubCategory",this.subCategoryService.stringSubCategory());
			model.addAttribute("listCategory",this.categoryService.listCategory());
			return"subcategories";
		}
		
		//categoryService.getCategoryIdByName(subcategory.getCategory().getCategoryName());
		else{
		Category category = categoryService.getCategoryIdByName(subcategory.getCategory().getCategoryName());
		categoryService.addCategory(category);
		subcategory.setCategory(category);
		subcategory.setCategoryId(category.getCategoryId());
		this.subCategoryService.addSubCategory(subcategory);
		return "redirect:/subcategories";
		}
	}
	
	@RequestMapping(value= "/subcategories", method = RequestMethod.GET)
	public String listSubCategory(Model model)
	{
		model.addAttribute("subcategory", new Subcategory());
		model.addAttribute("listSubCategory",this.subCategoryService.listSubCategory());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		model.addAttribute("stringSubCategory",this.subCategoryService.stringSubCategory());
		return "subcategories";
	
	}
	
	@RequestMapping(value="/editSubcategory-{subCategoryId}", method = RequestMethod.GET)
	public String editSubCategory(Model model, @PathVariable("subCategoryId") int subCategoryId){
		model.addAttribute("listCategory",this.categoryService.listCategory());
		model.addAttribute("stringSubCategory",this.subCategoryService.stringSubCategory());
		model.addAttribute("subcategory",subCategoryService.getSubCategoryById(subCategoryId));
		return "subcategories";
		
	}
	@RequestMapping(value="/deleteSubcategory-{subCategoryId}", method=RequestMethod.GET)	
	public String removeSubCategory(Model model, @PathVariable("subCategoryId") int subCategoryId){
		this.subCategoryService.delete(subCategoryId);
		return "redirect:/subcategories";
	}
	
	@RequestMapping("/all_subcategories--{categoryId}--subCategory")
	public ModelAndView viewSubCategory(@ModelAttribute("subcategory") Subcategory subcategory){
			List<Category> categories = categoryService.listCategory();
			Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String categoryGson = gson.toJson(categories);
			ModelAndView model = new ModelAndView("viewcategory");
			model.addObject("listCategory",this.categoryService.listCategory());
			model.addObject("categoryGson", categoryGson);
			return model;
			
		}

}
