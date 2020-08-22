package com.example.demo.controllers.admin;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Account;
import com.example.demo.entities.Invoice;
import com.example.demo.entities.InvoiceDetails;
import com.example.demo.entities.PucharseOrder;
import com.example.demo.entities.Rejection;
import com.example.demo.entities.Role;
import com.example.demo.service.AccountService;
import com.example.demo.service.InvoiceDetailService;
import com.example.demo.service.InvoiceService;
import com.example.demo.service.ProductService;
import com.example.demo.service.PucharseOrderService;
import com.example.demo.service.RejectionService;

@Controller
@RequestMapping(value = "invoice")
public class InvoiceController {

	@Autowired
	InvoiceService invoiceService;
	@Autowired
	InvoiceDetailService invoiceDetailService;
	@Autowired
	ProductService productService;
	@Autowired
	AccountService accountService;
	@Autowired
	PucharseOrderService pucharseOrderService;
	@Autowired
	RejectionService rejectionService;
	
	@RequestMapping(value = {"","/index"}, method = RequestMethod.GET)
	public String index(ModelMap model,Authentication authentication) {
		
		Role role = accountService.findByUsername(authentication.getName()).getRole();
		Account account = accountService.findByUsername(authentication.getName());
		
		if(role.getRole().equalsIgnoreCase("ROLE_SUPER_ADMIN") || role.getRole().equalsIgnoreCase("ROLE_ADMIN")) {
			model.put("invoices", invoiceService.findAll());
			return "invoice_admin.index";
		}
		model.put("invoices", invoiceService.findByIdAccount(account.getId()));
		return "invoice_user.index";
	}
	
	@RequestMapping(value = "details/{id}",method = RequestMethod.GET)
	public String details(ModelMap model,@PathVariable("id") int invoice_id) {
		double total = 0;
		model.put("details", invoiceService.findById(invoice_id).getInvoiceDetailses());
		for (InvoiceDetails detail : invoiceService.findById(invoice_id).getInvoiceDetailses()) {
			total += detail.getInventory().getPrice();
		}
		total = invoiceService.findById(invoice_id).getTotal();
		model.put("total", total);
		
		return "invoice.details";
	}
	
	@RequestMapping(value = "cancel/{id}/{id2}",method = RequestMethod.GET)
	public String cancel(@PathVariable("id") int invoice_id,@PathVariable("id2")int pucharorder_id) {
		Invoice invoice = invoiceService.findById(invoice_id);
		invoice.setStatus(false);
		invoiceService.save(invoice);
		
		PucharseOrder order = pucharseOrderService.findById(pucharorder_id);
		
		Rejection rejection = new Rejection();
		rejection.setCreated(new Date());
		rejection.setInvoice(invoice);
		rejection.setPucharseOrder(order);
		rejection.setStatus(true);
		
		rejectionService.save(rejection);
		
		return "redirect:/invoice";
	}
}
