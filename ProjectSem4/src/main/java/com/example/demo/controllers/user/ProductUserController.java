package com.example.demo.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.repository.ProductRepository;
import com.example.demo.service.ProductService;

@Controller
@RequestMapping(value = "user/product")
public class ProductUserController {
	@Autowired
	ProductService productService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(Model model) {

		model.addAttribute("products",productService.findAll());
		return "product_user.index";
	}
	
}
