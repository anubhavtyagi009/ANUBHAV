package com.niit.catsuppro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.catsuppro.dao.CategoryDAO;
import com.niit.catsuppro.dao.FeedbackDAO;
import com.niit.catsuppro.model.Feedback;

@Controller
public class FeedbackController {

	@Autowired
	private FeedbackDAO feedbackDAO;
	
	@Autowired
	private Feedback feedback;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@RequestMapping(value="/feedback",method=RequestMethod.GET)
	public ModelAndView feedpage(Model model)
	{
		ModelAndView mv = new ModelAndView("feedback");
		model.addAttribute("hcatlist", this.categoryDAO.list());
		return mv;
	}
	
	@ModelAttribute("addfeed")
	public Feedback feedmodel()
	{
		System.out.println("created feed model");
		return new Feedback();
	}
	
	
	/* ---------------------------- SAVE FUNCTION FOR FEEDBACK ----------------------------- */
	@RequestMapping(value="/addfeedback", method=RequestMethod.POST)
	public ModelAndView feedaddfunc(@ModelAttribute("addfeed") Feedback addfeed)
	{
		feedbackDAO.save(addfeed);
		
		ModelAndView mv = new ModelAndView("feedback");
		return mv;
	}

	
	
}
