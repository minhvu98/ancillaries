package com.example.demo.controllers.user;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Account;
import com.example.demo.entities.Credit;
import com.example.demo.service.AccountService;
import com.example.demo.service.CreditService;
import com.example.demo.service.InvoiceService;
import com.example.demo.service.PucharseOrderService;
import com.example.demo.service.RejectionService;
import com.example.demo.service.WarehouseService;

@Controller
@RequestMapping(value = { "home" })
public class HomeController {
	
	@Autowired
	AccountService accountService;
	@Autowired
	CreditService creditService;
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	WarehouseService warehouseService;
	@Autowired
	PucharseOrderService orderService;
	@Autowired
	RejectionService rejectionService;
	
	
	@RequestMapping(value = { "index" }, method = RequestMethod.GET)
	public String index(Authentication authentication, HttpSession session,ModelMap model) {
		session.setAttribute("username", authentication.getName());
		session.setAttribute("role", authentication.getAuthorities());
		Account account = accountService.findByUsername(authentication.getName());
		if (session != null && account.getRole().getRole().equalsIgnoreCase("ROLE_USER")) {
			
//			Credit credit = creditService.findByIdAccount(account.getId());
			model.put("credit", creditService.findByIdAccount(account.getId()));
			model.put("creditaccount", account.getCredit());
			return "home_user.index";
		}
		else if(session != null)
		{
			model.put("countAccount", accountService.count());
			model.put("countInvoice", invoiceService.count());
			model.put("countCredit", creditService.count());
			model.put("countOrder", orderService.count());
			model.put("countWarehouse", warehouseService.count());
			model.put("countRejection", rejectionService.count());
			return "home_admin.index";
		}
		
		
		return "redirect:/home";
	}

}
