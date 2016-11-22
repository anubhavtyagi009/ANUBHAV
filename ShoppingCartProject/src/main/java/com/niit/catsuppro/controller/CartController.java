package com.niit.catsuppro.controller;

import java.security.Principal;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.catsuppro.dao.CartDAO;
import com.niit.catsuppro.dao.CategoryDAO;
import com.niit.catsuppro.dao.ProductDAO;
import com.niit.catsuppro.model.Cart;
import com.niit.catsuppro.model.Category;
import com.niit.catsuppro.model.Product;

@Controller
public class CartController {
	
	@Autowired(required = true)
	Cart cart;
	
	@Autowired(required = true)
	private CartDAO cartDAO;
	
	@Autowired(required = true)
	private CategoryDAO categoryDAO;
	
	@Autowired(required = true)
	private ProductDAO productDAO;
	
	@ModelAttribute("cart")
	public Cart cartmodel()
	{
		System.out.println("created model for cart");
		return new Cart();
	}
	
	@RequestMapping(value="/yourproduct",method=RequestMethod.GET)
	public ModelAndView prodisplay(Model model)
	{
		ModelAndView mv = new ModelAndView("yourproduct");
		model.addAttribute("hcatlist", this.categoryDAO.list());
		return mv;
	}
	
	
	@RequestMapping(value="/yourproduct{pro_id}", method = RequestMethod.GET)
	public String yourpro(@PathVariable("pro_id") String pro_id ,Model model)
	{
		model.addAttribute("yourpro", this.productDAO.getProduct(pro_id));
		
		return "yourproduct";
	}
	

	
	
	@RequestMapping(value="/myCart{usrid}", method = RequestMethod.GET)
	public String usercarlistfunc(@PathVariable("usrid") String usrid, Model model)
	{
		model.addAttribute("cart", cart);
		model.addAttribute("userscartlists", this.cartDAO.usercartlist(usrid));
		return "cart";
	}
	
	
	@RequestMapping(value = "/myCart", method = RequestMethod.GET)
	public String myCart(Model model, Principal principal) {
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
	
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.usercartlist(principal.getName()));
	//	model.addAttribute("totalAmount", cartDAO.getTotalAmount("user")); // Just to test, password user
		model.addAttribute("displayCart", "true");
		return "cart";
	}
	
	@RequestMapping(value= "/cartadd{pro_id}", method = RequestMethod.GET)
	public String addToCart(@PathVariable("pro_id") String pro_id,HttpServletRequest request, Model model, Principal principal){
		
	
	 Product product =	 productDAO.getProduct(pro_id);
	 Cart cart = new Cart();
	 cart.setPrice(product.getPrice());
	 cart.setProdname(product.getPro_name());
	 cart.setCartpro_id(product.getPro_id());
	 cart.setQuantity("1");
	 cart.setUsrid(principal.getName());  //  id should keep session and use the same id
	   //	 
		cartDAO.saveOrUpdate(cart);
		
		model.addAttribute("cart", new Cart());
		model.addAttribute("cartList", this.cartDAO.usercartlist(principal.getName()));
		//return "redirect:/views/home.jsp";
		System.out.println("connect to controller");
		
		
		
		
		
		
		return "cart";
		
		
	}
	
	@RequestMapping("/cart/delete/{cart_id}")
	public String deleteCart(@PathVariable("cart_id") int cart_id,Model model)
{
	
		cartDAO.delete(cart_id);
		
		
		 return "redirect:/myCart";
}

	@SuppressWarnings("unused")
	@RequestMapping(value = "/checkout", method = RequestMethod.GET)
	public String checkout(Model model, Principal principal) {
	    
		int i,j=0;
		int s=0;
		int n=cartDAO.list().size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list().get(i).getPrice();
			
		}
		System.out.println(s);
		model.addAttribute("sum", s);
		model.addAttribute("cart", new Category());
		model.addAttribute("cartList", this.cartDAO.usercartlist(principal.getName()));
		//model.addAttribute("total", this.cartDAO.getTotalAmount("id"));
		
	
		
		//System.out.println(U);
		return "/checkout";
	}
	
	@RequestMapping(value = "/logout2", method = RequestMethod.GET)
	public String logout2(Model model) {
	
		
		
		
	
		
		//System.out.println(U);
		return "/logout";
	}

	@RequestMapping("/logout")
	public String logout(Model model)
	{
		int i,s=0,j=0;
		int n=cartDAO.list().size();
		System.out.println(n);
		for(i=0;i<n;i++)
		{
			s=s+cartDAO.list().get(i).getPrice();
			
		}
		System.out.println(s);
		model.addAttribute("sum", s);
		while(n!=0)
		{
			cartDAO.delete(cartDAO.list().get(j).getCart_id());
			n=cartDAO.list().size();
			
		}
		return "logout";
	}
	
	
 

}
