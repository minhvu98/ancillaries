package com.example.demo.controllers.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "factory")
public class FactoryController {
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index() {
		
		return "factory.index";
	}
	
	@RequestMapping(value = "add",method = RequestMethod.GET)
	public String add() {
		
		return "factory_add.index";
	}
}
