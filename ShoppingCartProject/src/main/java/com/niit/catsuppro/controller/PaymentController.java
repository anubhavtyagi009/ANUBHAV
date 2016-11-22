package com.niit.catsuppro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.catsuppro.dao.PaymentDAO;
import com.niit.catsuppro.model.Payment;

@Controller
public class PaymentController {
	
	@Autowired
	private Payment payment;
	@Autowired
	private PaymentDAO paymentDAO;
	
	@ModelAttribute("paymentform")
	public Payment paymodel()
	{
		System.out.println("created payment model");
		return new Payment();
	}
	
	@RequestMapping("/payment")
	public ModelAndView pay(Model model)
	{
		ModelAndView mv = new ModelAndView("payment");
	/*	model.addAttribute("homecatlist", this.categoryDAO.list());*/
		return mv;
	}
	
	@RequestMapping("/thanks")
	public String getthanks()
	{
		return "thanks";	
	}
	
	
	@RequestMapping(value="/addpayment", method=RequestMethod.POST)
	public String addpaymentfunc(@ModelAttribute("paymentform") Payment paymentform)
	{		
		paymentDAO.paymentsave(paymentform);
		return "redirect:/thanks";
	}

	

}
