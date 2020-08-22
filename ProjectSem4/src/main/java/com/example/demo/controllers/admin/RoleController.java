package com.example.demo.controllers.admin;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Role;
import com.example.demo.repository.RoleRepository;
import com.example.demo.service.RoleService;



@Controller
@RequestMapping(value = {"role"})
public class RoleController {
	
	
	@Autowired 
	RoleService roleService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		Iterable<Role> roles = roleService.findAll();
		model.addAttribute("roles",roles);
		
		return "role.index";
	}
	
	@RequestMapping(value = {"update/{id}"},method = RequestMethod.GET)
	public String update(ModelMap model,@PathVariable("id")int id) {
		Role role = roleService.findById(id);
		roleService.save(role);
		
		return "role.index";
	}
	
}
