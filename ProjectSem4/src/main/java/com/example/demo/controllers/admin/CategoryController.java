package com.example.demo.controllers.admin;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Category;
import com.example.demo.repository.CategoryRepository;
import com.example.demo.service.CategoryService;

@Controller
@RequestMapping(value = "admin/category")
public class CategoryController {
	@Autowired
	CategoryService categoryService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(Model model,Authentication authentication,HttpSession session) {
		
		session.setAttribute("username", authentication.getName());
		session.setAttribute("role", authentication.getAuthorities());
		model.addAttribute("categories",categoryService.findAll());
		return "category.index";
		
	}
	
	@RequestMapping(value = "addCategory",method = RequestMethod.GET)
	public String addCategory(Model model,@ModelAttribute("category") Category category) {
		model.addAttribute("category",new Category());
		
		return "category/addcategory";
		
	}
	
	@RequestMapping(value = "add",method = RequestMethod.GET)
	public String add(Model model,@ModelAttribute("category") Category category) {
		System.out.println(category.getName());
		
		Category cate = new Category();
		cate.setName(category.getName());
		if(categoryService.save(cate) != null) {
			
			return "category/addcategory";
		}
		
		
		return "category/index";
		
	}
	
	@RequestMapping(value = "update",method = RequestMethod.GET)
	public String update() {
		
		
		return "category_admin.edit";
	}
	
}
