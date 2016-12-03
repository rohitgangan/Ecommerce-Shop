package com.camerashop.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.camerashop.model.ProductView;
import com.camerashop.model.SearchView;
import com.camerashop.model.Subcategory;
import com.camerashop.service.CategoryService;
import com.camerashop.service.ProductService;
import com.camerashop.service.SearchViewService;
import com.camerashop.service.SubcategoryService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class CameraShopController {
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private SearchViewService searchViewService;
	
	
	
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
	
	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public ModelAndView accesssDenied(Principal username) {

		ModelAndView model = new ModelAndView();
		model.setViewName("403");
		return model;

	}
	
	@RequestMapping(value="/getTags", method=RequestMethod.GET)
	public @ResponseBody String getTags(@RequestParam String categoryName) {

		return simulateSearchResult(categoryName);

	}

	private String simulateSearchResult(String categoryName) {

		List<SearchView> result = new ArrayList<SearchView>();
		List<SearchView> data = searchViewService.listSearchView();
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String sgson = null;
		
		
		// iterate a list and filter by tagName
		for (SearchView searchView : data) {
			if (searchView.getCategoryName().contains(categoryName)) {
				result.add(searchView);
			}
		}
		sgson=gson.toJson(result);
		return sgson;
	}

}
