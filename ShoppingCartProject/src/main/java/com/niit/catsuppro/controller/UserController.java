package com.niit.catsuppro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.catsuppro.dao.CategoryDAO;
import com.niit.catsuppro.dao.FeedbackDAO;
import com.niit.catsuppro.dao.UserDAO;
import com.niit.catsuppro.model.User;

@Controller
public class UserController {

	@Autowired
	private UserDAO userDAO;
	
	@Autowired
	private User user;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private FeedbackDAO feedbackDAO;
	
	@ModelAttribute("user")
	public User usermodel()
	
	{
		System.out.println("created user model");
		return new User();
	}
	
	@RequestMapping("/login")
	public ModelAndView loginpage()
	{
		ModelAndView mv = new ModelAndView("login");
		return mv;
	}
	
	@RequestMapping("/signup")
	public ModelAndView signuppage()
	{
		ModelAndView mv = new ModelAndView("signup");
		return mv;
	}
	
	@RequestMapping(value="/signupfunc")
	public ModelAndView signupadd(@ModelAttribute("user") User user)
	{
		ModelAndView mv = new ModelAndView("signup");
		
		if(userDAO.getByUserName(user.getUser_name()) == null)
		{
			try {
				userDAO.usave(user);
				mv.addObject("signupsuccess", "Successfully Signuuped");
			} catch (Exception e) {
				mv.addObject("signuperror", "Error while signing up");
			}
		}
		
		return mv;
	}
	
	 @RequestMapping("/loginUser")
	    public String login(@RequestParam(value="error", required = false) String error, @RequestParam(value="logout",
	            required = false) String logout, Model model) {
		 
		 model.addAttribute("hcatlist", this.categoryDAO.list());
	        if (error!=null) {
	        	System.out.println("Error.....");
	            model.addAttribute("error", "...Invalid username and password");
	        }
	        	
	        if(logout!=null) {
	        	System.out.println("Logout called.....");
	            model.addAttribute("msg", "...You have been logged out");
	        }

	        return "login";
	    }
	    
	    /*
	     * userManagement method is used to open user management page.
	     */
	    @RequestMapping(value = "/user")
	    public String userManagement() 
	    {
	    	System.out.println("USER CALLED.......");
	    	return "home";
	    }
	    
	    @RequestMapping(value = "/admin")
	    public String adminManagement(Model model) 
	    {
	    	System.out.println("ADMIN CALLED.......");
	    	
	    	model.addAttribute("feedlist", this.feedbackDAO.somefeed());
	    	return "admin";
	    }
	    
	    
	    @RequestMapping("/allfeed")
	    public String allfeedfunc(Model model)
	    {
	    	model.addAttribute("feedlist", this.feedbackDAO.feedlist());
	    	return "admin";
	    }
	
	
	
	
}
