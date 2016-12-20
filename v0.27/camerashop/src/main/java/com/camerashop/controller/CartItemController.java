package com.camerashop.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
		session.setAttribute("userId", cartItem.getUserId());
		int cartItemId = (Integer) session.getAttribute("cartItemId");
		session.setAttribute("productId"+cartItem.getCartItemId(), cartItem.getProductId());
		return "redirect:/cartlist-"+cartItemId;	
	}
	
	@RequestMapping("/cartlist-{cartItemId}")
	public String checkOut(@ModelAttribute CartItem cartItem, @PathVariable("cartItemId") int cartItemId, HttpSession session, Model model){
		session.setAttribute("checkoutfrom", "buy_now");
		cartItemId = (Integer) session.getAttribute("cartItemId");
		session.setAttribute("cartItemId", cartItemId);
		CartItem cartId = cartItemService.getById(cartItemId);
		session.setAttribute("userBuyNowList",cartItemService.getByCartItemId(cartItemId));
		Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
		String cartItemGson = gson.toJson(cartId);
		model.addAttribute("cartItemGson",cartItemGson);
		model.addAttribute("listCategory",this.categoryService.listCategory());
		return "cartitem";
		
	}
	
	@RequestMapping("/checkout")
	  public String getCartCheckOut(@ModelAttribute CartItem cartItem, HttpSession session)
	  {
		  Authentication authentication= SecurityContextHolder.getContext().getAuthentication();
		  String username=authentication.getName();
		  int userId= cartItemService.getIdByName(username).getUserId();
		  session.setAttribute("userId", userId);
		  return "redirect:/cart?userId="+userId;
	  }
	
	@RequestMapping(value="/deleteCartItem-{cartItemId}", method=RequestMethod.GET)
	public String removeCartItem(@PathVariable("cartItemId") int cartItemId){
		int productId = cartItemService.getById(cartItemId).getProductId();
		this.cartItemService.deleteCartItem(cartItemId);
		this.cartItemService.addProductQuantity(productId);
		
		return "redirect:/my_cart";
		
	}
	
	@RequestMapping("/addToCart-{productId}")
	public String addToCart(@ModelAttribute("cartItem") CartItem cartItem, @PathVariable("productId") int productId, HttpSession session){
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
		session.setAttribute("productId"+cartItem.getCartItemId(), cartItem.getProductId());
		session.setAttribute("userId", cartItem.getUserId());
		return "redirect:/";	
	}
	
	@RequestMapping("/my_cart")
	public String viewCartList(@ModelAttribute("cartItem") CartItem cartItem, Model model, HttpSession session){
		
		session.setAttribute("checkoutfrom", "my_cart");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
	      String username = authentication.getName();
	      int userId = cartItemService.getIdByName(username).getUserId();
	      System.out.println("yser ID"+userId);
	      List<CartItem> userCartList = cartItemService.getCartListByUserId(userId);
	      session.setAttribute("userCartList",userCartList);
	      for(CartItem c:userCartList)
	      {
	    	  session.setAttribute("productId"+c.getCartItemId(), c.getProductId());
	      }
	      Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String cartListGson = gson.toJson(userCartList);
			model.addAttribute("cartListGson",cartListGson);
			model.addAttribute("listCategory",this.categoryService.listCategory());
		return "mycart";
		
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/place_order")
	  public String updateCartItemFlag(HttpSession session)
	  {
		  
		List<CartItem> c = (List<CartItem>) session.getAttribute("userCartList");
		  if(c==null || session.getAttribute("checkoutfrom")=="buy_now")
		  {
			  cartItemService.placeOrder((Integer) session.getAttribute("cartItemId"));  
		  }
		  else if( session.getAttribute("checkoutfrom")=="my_cart")
		  {
		    for(CartItem l : c)
	        {
			  cartItemService.placeOrder(l.getCartItemId());
	        }
		  }
		  return "redirect:/order_receipt";
	  }
	
	 @SuppressWarnings("unchecked")
	 @RequestMapping("/cancel_order")
	public String addProductItem(HttpSession session)
	  {
		  
		List<CartItem> c = (List<CartItem>) session.getAttribute("userCartList");
		  if(c==null || session.getAttribute("checkoutfrom")=="buy_now")
		  {
			  int productId = cartItemService.getById((Integer) session.getAttribute("cartItemId")).getProductId();
			  cartItemService.deleteCartItem((Integer) session.getAttribute("cartItemId"));
			  cartItemService.addProductQuantity(productId);
			  return "redirect:/";
		  }
		  else
		  {
		    return "redirect:/";
		  }
		 
	  }
	
	 @SuppressWarnings("unchecked")
	@RequestMapping("/order_receipt")
	 public String orderReceipt(HttpSession session, Model model){
		 List<CartItem> orderd = (List<CartItem>) session.getAttribute("userCartList");
		 if(orderd==null || session.getAttribute("checkoutfrom")=="buy_now"){
			 List<CartItem> buyNowProducts = (List<CartItem>) session.getAttribute("userBuyNowList");
		 Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
			String orderdProductList = gson.toJson(buyNowProducts);
			model.addAttribute("orderdProductList",orderdProductList);
			return "order_receipt";
		 }
		 else if( session.getAttribute("checkoutfrom")=="my_cart"){
			 
			 List<CartItem> orderdProducts = (List<CartItem>) session.getAttribute("userCartList");
			 Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
				String orderdProductList = gson.toJson(orderdProducts);
				model.addAttribute("orderdProductList",orderdProductList);
			 return "order_receipt";
		 }
		return "order_receipt";
		 }
		 
	 @RequestMapping("/my_orders")
		public String userOrderList(@ModelAttribute("cartItem") CartItem cartItem, Model model, HttpSession session){
			
			session.setAttribute("checkoutfrom", "my_cart");
			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		      String username = authentication.getName();
		      int userId = cartItemService.getIdByName(username).getUserId();
		      System.out.println("yser ID"+userId);
		      List<CartItem> userOrderList = cartItemService.getOrdersListByUserId(userId);
		      
		      Gson gson = new GsonBuilder().excludeFieldsWithoutExposeAnnotation().create();
				String orderListGson = gson.toJson(userOrderList);
				model.addAttribute("orderListGson",orderListGson);
				model.addAttribute("listCategory",this.categoryService.listCategory());
			return "myorders";
			
		}
	 
	 @RequestMapping(value="/deleteOrderItem-{cartItemId}", method=RequestMethod.GET)
		public String removeOrderItem(@PathVariable("cartItemId") int cartItemId){
			this.cartItemService.deleteCartItem(cartItemId);
			
			
			return "redirect:/my_orders";
			
		}
}
