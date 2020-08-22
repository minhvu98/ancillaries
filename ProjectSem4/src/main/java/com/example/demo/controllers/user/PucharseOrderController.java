package com.example.demo.controllers.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Account;
import com.example.demo.entities.PucharseOrder;
import com.example.demo.repository.AccountRepository;
import com.example.demo.repository.InventoryRepository;
import com.example.demo.repository.PucharseOrderRepository;
import com.example.demo.service.AccountService;
import com.example.demo.service.PucharseOrderService;

@Controller
@RequestMapping(value = "pucharseorder")
public class PucharseOrderController {

	@Autowired
	PucharseOrderService pucharseorderService;

	@Autowired
	AccountService accountService;

	@RequestMapping(value = { "", "history" }, method = RequestMethod.GET)
	public String index(ModelMap model, Authentication authentication) {

		Account account = accountService.findByUsername(authentication.getName());
//		System.out.println(authentication.getName());
//		System.out.println(account.getRole().getRole());
		
		if (account.getRole().getRole().equalsIgnoreCase("ROLE_SUPER_ADMIN")
				|| account.getRole().getRole().equalsIgnoreCase("ROLE_ADMIN")) {
			model.put("pucharseorders", pucharseorderService.findAll());
			
			return "pucharseorderadmin.index";
		}
		else if(account.getRole().getRole().equalsIgnoreCase("ROLE_USER")) {
			model.put("account", account);
			model.put("pucharseorders", account.getPucharseOrders());
		}
		return "pucharseorderuser.index";
	}
}
