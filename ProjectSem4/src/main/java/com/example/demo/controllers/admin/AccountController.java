package com.example.demo.controllers.admin;

import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Account;
import com.example.demo.entities.Role;
import com.example.demo.repository.AccountRepository;
import com.example.demo.repository.RoleRepository;
import com.example.demo.service.AccountService;
import com.example.demo.service.PucharseOrderService;

@Controller
@RequestMapping(value = {"account"})
public class AccountController {
	
	@Autowired
	AccountService accountService;
	
	@Autowired 
	RoleRepository roleRepository;
	
	@Autowired
	PucharseOrderService pucharseOrderService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		Iterable<Account> accounts = accountService.findAll();
		model.addAttribute("accounts",accounts);
		
		return "account.index";
	}
	
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String edit(@PathVariable("id")int id ,ModelMap model) {
		Account account = accountService.findById(id);
		Iterable<Role> roles = roleRepository.findAll();
		model.addAttribute("roles", roles);
		model.addAttribute("account", account);
		return "account.edit";
	}
	
	@RequestMapping(value = "saveChanges",method = RequestMethod.POST)
	public String saveChanges(@ModelAttribute("account") Account account) {
		accountService.save(account);
		return "redirect:/account";
	}
	
	@RequestMapping(value = "deactivate/{id}",method = RequestMethod.GET)
	public String delete(@PathVariable("id")int id) {
		
		Account account = accountService.findById(id);
		if(account.isStatus() == true)
			account.setStatus(false);
		else
			account.setStatus(true);
		accountService.save(account);
		return "redirect:/account";
	}
}
