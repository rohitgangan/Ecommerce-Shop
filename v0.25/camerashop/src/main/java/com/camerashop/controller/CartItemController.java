package com.camerashop.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camerashop.model.CartItem;
import com.camerashop.service.CartItemService;
import com.camerashop.service.CategoryService;
import com.camerashop.service.ProductService;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
public class CartItemController {
	
	@Autowired
	private CartItemService cartItemService;
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/buy_now-{productId}")
	public String addToBuyNow(@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("productId") int productId, @RequestParam("userId") int userId,Model model, HttpSession session){
		cartItem.setProductId(productId);
		cartItem.setFlag(false);
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      String username = authentication.getName();
		cartItem.setUserId(cartItemService.getIdByName(username).getUserId());
		cartItem.setCartId(cartItemService.getIdByName(username).getUserId());
		cartItem.setProductName(productService.getProductById(productId).getProductName());
		cartItem.setAmount(productService.getProductById(productId).getProductPrice());
		cartItem.setPrice(productService.getProductById(productId).getProductPrice());
		cartItem.setQuantity("1");
		Date date = new Date();
		cartItem.setOrderDate(date);
		cartItemService.addToBuyNow(cartItem);
		cartItemService.minusProductQuantity(productId);
		session.setAttribute("cartItemId", cartItem.getCartItemId());
		session.setAttribute("userID", cartItem.getUserId());
		int cartItemId = (Integer) session.getAttribute("cartItemId");
		return "redirect:/cartlist-"+cartItemId;	
	}
	
	@RequestMapping("/cartlist-{cartItemId}")
	public String checkOut(@ModelAttribute CartItem cartItem, @PathVariable("cartItemId") int cartItemId, HttpSession session, Model model){
		cartItemId = (Integer) session.getAttribute("cartItemId");
		session.setAttribute("cartItemId", cartItemId);
		CartItem prodId = cartItemService.getById(cartItemId);
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String cartItemGson = gson.toJson(prodId);
		model.addAttribute("cartItemGson",cartItemGson);
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "cartitem";
		
	}
	
	@RequestMapping("/checkout")
	  public String getCartCheckOut()
	  {
		  Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		  String username=authentication.getName();
		  int userId= cartItemService.getIdByName(username).getUserId();
//		  int productId = (Integer) session.getAttribute("productId");
//		  int cartItemId = (Integer) session.getAttribute("cartItemId");
		  return "redirect:/cart?userId="+userId;
	  }
}
