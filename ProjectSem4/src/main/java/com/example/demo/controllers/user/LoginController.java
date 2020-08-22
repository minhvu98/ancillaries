package com.example.demo.controllers.user;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entities.Account;
import com.example.demo.repository.AccountRepository;
import com.example.demo.service.AccountService;


@Controller
@RequestMapping(value = {"","login"})
public class LoginController {
	
	@Autowired
	AccountService accountService;
	
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(
		@RequestParam(value = "error", required = false) String error, 
		@RequestParam(value = "logout", required = false) String logout, 
		ModelMap modelMap) {
		
		String hash = new BCryptPasswordEncoder().encode("123");
		System.out.println(hash);
		
		if (error != null) {
			modelMap.put("msg", "Failed");
		}
		if (logout != null) {
			modelMap.put("msg", "Logout Successfully");
		}
		return "login/index";
	}
	
//	@RequestMapping(value = "checkLogin",method = RequestMethod.POST)
//	public String checkLogin(@RequestParam("email") String username,
//			@RequestParam("password") String password,Model model,HttpSession session) {
//		
//		Account acc = accountService.findByUsername(username);
//		
//		if(acc.getUsername().equalsIgnoreCase(username) && acc.getPassword().equalsIgnoreCase(password) && acc.isStatus()==true ) {
//				session.setAttribute("account", acc);
//				return "redirect:/home/index";
//		}
//		return "login/index";
//	}
	
	@RequestMapping(value = "signout",method = RequestMethod.GET)
	public String signout(HttpSession session) {
		session.removeAttribute("role");
		return "redirect:/login"; 
	}
}

