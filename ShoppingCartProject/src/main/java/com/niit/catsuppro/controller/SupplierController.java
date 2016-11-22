package com.niit.catsuppro.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.catsuppro.dao.CategoryDAO;
import com.niit.catsuppro.dao.SupplierDAO;
import com.niit.catsuppro.model.Supplier;

@Controller
public class SupplierController {
	
	@Autowired
	private Supplier supplier;
	@Autowired
	private SupplierDAO supplierDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@RequestMapping(value="/supplier",method=RequestMethod.GET)
	public ModelAndView suphomepage(Model model)
	{
		ModelAndView mv = new ModelAndView("supplier");
		model.addAttribute("hcatlist", this.categoryDAO.list());
		return mv;
	}
	
	//Supplier MOdel
		@ModelAttribute("supplier")
		public Supplier supmodels()
		{
			System.out.println("supplier model created");
			return new Supplier();
		}
		
		
		
		@RequestMapping(value="/supplieradd", method = RequestMethod.POST)
		public ModelAndView addsupfunc(@ModelAttribute("supplier") Supplier supplier)
		{
			supplierDAO.saveOrUpdate(supplier);
			
			ModelAndView mv = new ModelAndView("supplier");
			return mv;
			
		}
		
		
		@RequestMapping(value="/suptable", method = RequestMethod.GET)
		public String listSupplier(Model model)
		{
			model.addAttribute("supplier", supplier);
			model.addAttribute("supplierList", this.supplierDAO.list());
			
			return "supplier";
		}
		
		
		@RequestMapping(value="/supplier-edit-{sup_id}",method = RequestMethod.GET)
		public String supeditfunc(@PathVariable("sup_id") String sup_id, Model model)
		{
			model.addAttribute("supplier", this.supplierDAO.getSupplier(sup_id));
			model.addAttribute("listSupplier", this.supplierDAO.list());
			
			return "supplier";
		}
		
		
		@RequestMapping("supplier-delete-{sup_id}")
		public String deleteSupplier(@PathVariable("sup_id") String sup_id, ModelMap model) throws Exception {

			try {
				supplierDAO.delete(sup_id);
				model.addAttribute("message", "Successfully Added");
			} catch (Exception e) {
				model.addAttribute("message", e.getMessage());
				e.printStackTrace();
			}
			// redirectAttrs.addFlashAttribute(arg0, arg1)
			return "supplier";
		}

}
