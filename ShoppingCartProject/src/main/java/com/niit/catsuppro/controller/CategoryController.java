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
import com.niit.catsuppro.model.Category;

@Controller
public class CategoryController {
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	
	
	@RequestMapping(value="/category",method=RequestMethod.GET)
	public ModelAndView cathomepage(Model model)
	{
		ModelAndView mv = new ModelAndView("category");
		model.addAttribute("hcatlist", this.categoryDAO.list());
		return mv;
	}
	
	
	//Category Model
	@ModelAttribute("category")
	public Category catmodels()
	{
		System.out.println("created category model");
		return new Category();
	}
	
	
	/* ------------------ SAVE FUNCTION FOR CATEGORY ------------------- */
	@RequestMapping(value="/categoryadd", method = RequestMethod.POST)
	public ModelAndView cataddcatfunc(@ModelAttribute("category") Category category)
	{
		categoryDAO.saveOrUpdate(category);
		
		ModelAndView mv = new ModelAndView("category");
		return mv;
	}
	
	
	/* ------------------ LIST FUNCTION FOR CATEGORY ------------------- */
	@RequestMapping(value="/cattable", method = RequestMethod.GET)
	public String catlistCategories(Model model)
	{
		model.addAttribute("category", category);
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		return "category";
	}
	
	
	/* -------------- 	DISPLAY CATEGORY INTO TEXTBOX ------------- */
	@RequestMapping(value="/category-edit-{cat_id}",method = RequestMethod.GET)
	public String catcateditfunc(@PathVariable("cat_id") String cat_id, Model model)
	{
		model.addAttribute("category", this.categoryDAO.getCategory(cat_id));
		model.addAttribute("listCategory", this.categoryDAO.list());
		
		return "category";
	}
	
	
	/* DELETE FUNCTION FOR CATEGORY */
	@RequestMapping("category-delete-{cat_id}")
	public String catdeleteCategory(@PathVariable("cat_id") String cat_id, ModelMap model) throws Exception {

		try {
			categoryDAO.delete(cat_id);
			model.addAttribute("message", "Successfully Added");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "category";
	}

}
