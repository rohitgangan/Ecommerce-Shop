
package com.camerashop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.Category;
import com.camerashop.model.Product;
import com.camerashop.model.Subcategory;
import com.camerashop.model.Supplier;
import com.camerashop.service.CategoryService;
import com.camerashop.service.ProductService;
import com.camerashop.service.SubcategoryService;
import com.camerashop.service.SupplierService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SubcategoryService subCategoryService;
	@Autowired
	private SupplierService supplierService;
	
	@RequestMapping("/products")
	public String Products(Model model){
		model.addAttribute("product", new Product());

		return "products";
		
	}
	
	@RequestMapping(value="/product", method=RequestMethod.POST)
	public String addProduct(@Validated @ModelAttribute("product") Product product, BindingResult result, Model model ){
		if(result.hasErrors())
		{	
			model.addAttribute("listProduct",this.productService.listProduct());
			model.addAttribute("listCategory",this.categoryService.listCategory());
			model.addAttribute("listSubCategory",this.subCategoryService.listSubCategory());
			model.addAttribute("listSupplier",this.supplierService.listSupplier());
			model.addAttribute("stringProduct",this.productService.stringProduct());
			return "products";
		}
		else{
		Category category = categoryService.getCategoryIdByName(product.getCategory().getCategoryName());
		categoryService.addCategory(category);
		product.setCategory(category);
		product.setCategoryId(category.getCategoryId());
		
		Subcategory subCategory = subCategoryService.getSubCategoryIdByName(product.getSubcategory().getSubCategoryName());
		subCategoryService.addSubCategory(subCategory);
		product.setSubcategory(subCategory);
		product.setSubCategoryId(subCategory.getSubCategoryId());
		
		Supplier supplier = supplierService.getSupplierIdByName(product.getSupplier().getSupplierName());
		supplierService.addSupplier(supplier);
		product.setSupplier(supplier);
		product.setSupplierId(supplier.getSupplierId());
		
		this.productService.addProduct(product);
		return "redirect:/products";
		}
	}
	
	@RequestMapping(value= "/products", method = RequestMethod.GET)
	public String listProduct(Model model)
	{
		model.addAttribute("product", new Product());
		model.addAttribute("listProduct",this.productService.listProduct());
		model.addAttribute("listCategory",this.categoryService.listCategory());
		model.addAttribute("listSubCategory",this.subCategoryService.listSubCategory());
		model.addAttribute("listSupplier",this.supplierService.listSupplier());
		model.addAttribute("stringProduct",this.productService.stringProduct());
		return "products";
		
	}
	
	@RequestMapping(value="/editProduct-{productId}", method = RequestMethod.GET)
	public String editProduct(Model model, @PathVariable("productId") int productId){
		model.addAttribute("listCategory",this.categoryService.listCategory());
		model.addAttribute("listSubCategory",this.subCategoryService.listSubCategory());
		model.addAttribute("listSupplier",this.supplierService.listSupplier());
		model.addAttribute("product",productService.getProductById(productId));
		
		return "products";
		
	}
	@RequestMapping(value="/deleteProduct-{productId}", method=RequestMethod.GET)	
	public String removeproduct(@PathVariable("productId") int productId){
		this.productService.delete(productId);
		return "redirect:/products";
	}
}
