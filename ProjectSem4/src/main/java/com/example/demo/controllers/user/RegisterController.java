package com.example.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entities.Account;
import com.example.demo.entities.Role;
import com.example.demo.repository.AccountRepository;
import com.example.demo.repository.RoleRepository;

@Controller
@RequestMapping(value = "register")
public class RegisterController {
	@Autowired
	AccountRepository accountRepository;
	@Autowired
	RoleRepository roleRepository;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index() {
		return "register/index";
	}
	
	@RequestMapping(value = "create",method = RequestMethod.POST,consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE, 
	        produces = {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
	public String create(@ModelAttribute("account") Account account,RedirectAttributes ra,HttpSession session) {
		
		Account acc = new Account();
		acc.setUsername(account.getEmail());
		acc.setFullname(account.getFullname());
		acc.setEmail(account.getEmail());
		acc.setPassword(account.getPassword());
		acc.setPhone(account.getPhone());
		acc.setStatus(true);
		acc.setCredit(0.0);
		acc.setDayTerm(0);
		
		acc.setRole(roleRepository.findById(3).get());
		
		if(session != null) {
			accountRepository.save(acc);
			return "redirect:/account";
		}
		
		if(accountRepository.save(acc) != null) {
			ra.addFlashAttribute("mess", "Register Succesfull!");
			return "redirect:/login/index";
		}
		
		ra.addFlashAttribute("mess", "Register Fail!");
		
		return "redirect:/login/index";
	}
}
