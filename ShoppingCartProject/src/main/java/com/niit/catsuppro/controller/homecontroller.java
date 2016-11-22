package com.niit.catsuppro.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.catsuppro.dao.CategoryDAO;
import com.niit.catsuppro.dao.ProductDAO;
import com.niit.catsuppro.model.Product;

@Controller
public class homecontroller {
	
	
	@Autowired
	private CategoryDAO categoryDAO;
		 
/*	@RequestMapping(value={"/"}, method = RequestMethod.GET)
	public String listProduct(Model model)
	{
		model.addAttribute("product", product);
		model.addAttribute("supplier", supplier);
		model.addAttribute("category", category);
		
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		
		return "home";
	}
	*/
	
	
	
	@RequestMapping(value="/categorypage",method=RequestMethod.GET)
	public ModelAndView catpages(Model model)
	{
		ModelAndView mv = new ModelAndView("categorypage");
		model.addAttribute("hcatlist", this.categoryDAO.list());
	
		return mv;
	}
	
	
	
	@Autowired
	private ProductDAO productDAO;
	@Autowired
	private Product product;
	
	@RequestMapping(value={"/","/home"},method=RequestMethod.GET)
	public String hpage(Model model)
	{
		model.addAttribute("hcatlist", this.categoryDAO.list());
		model.addAttribute("productlist", this.productDAO.somelist());
		return "home";
	}
	
	
	@RequestMapping(value="/category{cat_id}", method = RequestMethod.GET)
	public String catpage(@PathVariable("cat_id") String cat_id, Model model)
	{
		model.addAttribute("product", product);
		model.addAttribute("prolistofcat", this.productDAO.catprolist(cat_id));
		model.addAttribute("hcatlist", this.categoryDAO.list());
		return "categorypage";
	}

	
	/*@RequestMapping("/admin")
	public ModelAndView admin()
	{
		ModelAndView mv = new ModelAndView("admin");
		 mv.addObject("message", "thank you ");
		return mv;
	}*/
	
/*	@RequestMapping("/about")
	public ModelAndView about(Model model)
	{
		
		ModelAndView mv = new ModelAndView("about");
		
		
		return mv;
		
	}*/
	@RequestMapping(value="/about",method=RequestMethod.GET)
	public String about(Model model)
	{
		model.addAttribute("hcatlist", this.categoryDAO.list());
	/*	model.addAttribute("productlist", this.productDAO.somelist());*/
		return "about";
	}
	
	
	
	
	@RequestMapping("/bajaj")
	public ModelAndView bajaj()
	{
		ModelAndView mv = new ModelAndView("bajaj");
		
		return mv;
		
	}
	
	@RequestMapping("/ktm")
	public ModelAndView ktm()
	{
		ModelAndView mv = new ModelAndView("ktm");
		
		return mv;
		
	}
	
	@RequestMapping("/yamaha")
	public ModelAndView yamaha()
	{
		ModelAndView mv = new ModelAndView("yamaha");
		
		return mv;
		
	}
	
	@RequestMapping("/myCart")
	public ModelAndView cart()
	{
		ModelAndView mv = new ModelAndView("myCart");
		
		return mv;
		
	}
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
	
	
	
}
