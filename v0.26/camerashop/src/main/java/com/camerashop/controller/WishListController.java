package com.camerashop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.camerashop.model.WishList;
import com.camerashop.service.CartItemService;
import com.camerashop.service.CategoryService;
import com.camerashop.service.ProductService;
import com.camerashop.service.WishListService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class WishListController {

	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private WishListService wishListService;
	
	@RequestMapping("/wish_list-{productId}")
	public String addToWishList(@ModelAttribute("wishList") WishList wishList, @PathVariable("productId") int productId){
		wishList.setProductId(productId);
		wishList.setFlag(false);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      String username = authentication.getName();
	      wishList.setUserId(cartItemService.getIdByName(username).getUserId());
	      wishList.setCartId(cartItemService.getIdByName(username).getUserId());
	      wishList.setProductName(productService.getProductById(productId).getProductName());
	      wishList.setAmount(productService.getProductById(productId).getProductPrice());
	      wishList.setPrice(productService.getProductById(productId).getProductPrice());
	      wishList.setQuantity("1");	
		wishListService.addToWishList(wishList);
		
		return "redirect:/";
		
	}
	
	@RequestMapping("/my_wishlist")
	public String viewWishList(@ModelAttribute("wishList") WishList wishList, Model model){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      String username = authentication.getName();
	      int userId = cartItemService.getIdByName(username).getUserId();
	      System.out.println("yser ID"+userId);
	      List<WishList> userWishlist = wishListService.getWishListByUserId(userId);
	      Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String wishListGSon = gson.toJson(userWishlist);
			model.addAttribute("wishListGSon",wishListGSon);
			model.addAttribute("listCategory",this.categoryService.listCategory());
		return "wishlist";
		
	}
	
	@RequestMapping(value="/deleteWishListItem-{wishListId}", method=RequestMethod.GET)
	public String removeWishListItem(@PathVariable("wishListId")int wishListId){
		this.wishListService.deleteWishListItem(wishListId);
		
		return "redirect:/my_wishlist";
		
	}
}
