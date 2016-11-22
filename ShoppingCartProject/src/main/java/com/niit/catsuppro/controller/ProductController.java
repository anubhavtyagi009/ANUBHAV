package com.niit.catsuppro.controller;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.niit.catsuppro.dao.CategoryDAO;
import com.niit.catsuppro.dao.ProductDAO;
import com.niit.catsuppro.dao.SupplierDAO;
import com.niit.catsuppro.model.Category;
import com.niit.catsuppro.model.Product;
import com.niit.catsuppro.model.Supplier;
import com.niit.catsuppro.util.FileUtil;

@Controller
public class ProductController {
	
	@Autowired
	private Product product;
	@Autowired
	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;
	
	@Autowired
	private Supplier supplier;
	@Autowired
	private SupplierDAO supplierDAO;
	
	
	private Path path;
	
	
	@RequestMapping(value={"/product"}, method = RequestMethod.GET)
	public String prolistfunc(Model model)
	{
		/*model.addAttribute("product", product);*/
		model.addAttribute("hcatlist", this.categoryDAO.list());
		model.addAttribute("supplier", supplier);
		model.addAttribute("category", category);
		
		
		/*model.addAttribute("productList", this.productDAO.list());*/
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("hcatlist", this.categoryDAO.list());
		
		return "product";
	}
	
	
	//product Model
	@ModelAttribute("product")
	public Product promodels()
	{
		System.out.println("product model crated");
		return new Product();
	}
	
	@RequestMapping(value = "/productadd", method = RequestMethod.POST)
	public String addprofunc(@ModelAttribute("product") Product product,HttpServletRequest request)
	{
		Category category = categoryDAO.getByName(product.getCategory().getCat_name());
		categoryDAO.saveOrUpdate(category);
		
		Supplier supplier = supplierDAO.getByName(product.getSupplier().getSup_name());
		supplierDAO.saveOrUpdate(supplier);
		
		product.setCategory(category);
		product.setSupplier(supplier);
		
		product.setCategory_id(category.getCat_id());
		product.setSupplier_id(supplier.getSup_id());
		productDAO.saveOrUpdate(product);
		
		
		MultipartFile file=product.getImage();
		/**/
		String rootDirectory=request.getSession().getServletContext().getRealPath("/");
		/*path=Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\"+product.getPro_id()+".jpg");*/
		path = Paths.get(rootDirectory + "\\resources\\images\\" + product.getPro_id() + ".jpg");
	
		
		if(file!=null && !file.isEmpty()){
			try{
				file.transferTo(new File(path.toString()));
				System.out.println("Image Uploaded to Product.....");
			}catch(Exception e)
			{
				e.printStackTrace();
				throw new RuntimeException("image saving failed ",e);
			}
		}
		
		/*FileUtil.upload(path, file, product.getPro_id()+".jpg");*/
		System.out.println("path converting to string");
		FileUtil.upload(path.toString(), file, product.getPro_id() + ".jpg");
		System.out.println("path converted to string" + product.getPro_id());
		
		return "product";
	}
	
	@RequestMapping(value="/protable-{pro_id}")
	public String getlistproduct(@PathVariable("pro_id")String pro_id,Model model, RedirectAttributes redirectAttributes)
	{
		model.addAttribute("product",  new Product());
		model.addAttribute("category", new Category());
		model.addAttribute("supplier", new Supplier());
		model.addAttribute("productList", this.productDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());

    redirectAttributes.addFlashAttribute("listproduct", productDAO.getProduct(pro_id));
		
		return "product";
	}
	
	@RequestMapping(value="/product-edit-{pro_id}",method = RequestMethod.GET)
	public String proeditfunc(@PathVariable("pro_id") String pro_id, ModelMap model)
	{
		model.addAttribute("product", this.productDAO.getProduct(pro_id));
		model.addAttribute("listProduct", this.productDAO.list());
		model.addAttribute("supplierList", this.supplierDAO.list());
		model.addAttribute("categoryList", this.categoryDAO.list());
		
		return "product";
	}
	
	@RequestMapping("product-delete-{pro_id}")
	public String deleteProduct(@PathVariable("pro_id") String pro_id, ModelMap model) throws Exception {

		try {
			productDAO.delete(pro_id);
			model.addAttribute("message", "Successfully Deleted");
		} catch (Exception e) {
			model.addAttribute("message", e.getMessage());
			e.printStackTrace();
		}
		// redirectAttrs.addFlashAttribute(arg0, arg1)
		return "product";
	}
	
	
	

}
