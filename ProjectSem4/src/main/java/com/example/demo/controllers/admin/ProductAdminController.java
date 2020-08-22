package com.example.demo.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entities.Category;
import com.example.demo.entities.Product;
import com.example.demo.service.CategoryService;
import com.example.demo.service.ProductService;
import com.fasterxml.jackson.annotation.JacksonInject.Value;

@Controller
@RequestMapping(value = "admin/product")
public class ProductAdminController {
	@Autowired
	ProductService productService;
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(Model model) {
		
//		Iterable<Category> categories = categoryService.findAll();
//		System.out.println(categories.toString());
		model.addAttribute("products",productService.findAll());
		return "product_admin.index";
	}
	
	@RequestMapping(value = {"edit/{id}"},method = RequestMethod.GET)
	public String index2(ModelMap model,@PathVariable("id")int product_id) {

		model.addAttribute("categories",categoryService.findAll());
		model.addAttribute("product",productService.findById(product_id));
		
		return "admin_product.edit";
	}
	
	@RequestMapping(value = "save/{id}",method = RequestMethod.GET)
	public String edit(Model model,
			@PathVariable("id")int product_id,
			@RequestParam("product_name")String product_name,
			@RequestParam("status") Boolean status,
			@RequestParam("category_id") int category_id,
			@RequestParam("price") double price,
			@RequestParam("description") String description
			) {
		Category category = categoryService.findById(category_id);
		
		
		Product product_findById = productService.findById(product_id);
		if(product_findById != null) {
			product_findById.setName(product_name);
			product_findById.setStatus(status);
			product_findById.setCategory(category);
			product_findById.setDescription(description);
			product_findById.setPrice(price);
			productService.save(product_findById);
		}else {
			Product product = new Product();
			product.setName(product_name);
			product.setStatus(status);
			product.setCategory(category);
			product.setDescription(description);
			product.setPrice(price);
			productService.save(product);
		}
		model.addAttribute("products",productService.findAll());
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "saveAdd",method = RequestMethod.GET)
	public String saveAdd(Model model,
			@RequestParam("product_name")String product_name,
			@RequestParam("status") Boolean status,
			@RequestParam("category_id") int category_id,
			@RequestParam("price") double price,
			@RequestParam("description") String description
			) {
		Category category = categoryService.findById(category_id);
		
		
		
		
			Product product = new Product();
			product.setName(product_name);
			product.setStatus(status);
			product.setCategory(category);
			product.setDescription(description);
			product.setPrice(price);
			productService.save(product);
		
		model.addAttribute("products",productService.findAll());
		return "redirect:/admin/product";
	}
	
	@RequestMapping(value = "add",method = RequestMethod.GET)
	public String add(ModelMap model) {
		model.put("categories", categoryService.findAll());
		return "admin_product.add";
	}
	
	@RequestMapping(value = "deactivate/{id}",method = RequestMethod.GET)
	public String deactivate(@PathVariable("id") int id) {
		Product product = productService.findById(id);
		if(product.isStatus() == true) {
			product.setStatus(false);
		}else {
			product.setStatus(true);
		}
		productService.save(product);
		return "redirect:/admin/product";
	}
	
}
