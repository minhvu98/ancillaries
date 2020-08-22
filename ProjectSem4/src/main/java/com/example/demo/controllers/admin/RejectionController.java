package com.example.demo.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Invoice;
import com.example.demo.entities.PucharseOrder;
import com.example.demo.entities.Rejection;
import com.example.demo.service.InvoiceService;
import com.example.demo.service.PucharseOrderService;
import com.example.demo.service.RejectionService;

@Controller
@RequestMapping(value = "rejection")
public class RejectionController {

	@Autowired
	RejectionService rejectionService;
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	PucharseOrderService pucharseOrderService;
	
	@RequestMapping(value = {"","/index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		
		model.put("rejections", rejectionService.findAll());
		return "rejection.index";
	}
	
	@RequestMapping(value = "approval/{id}",method = RequestMethod.GET)
	public String approval(ModelMap model,@PathVariable("id") int id) {
		Rejection rejection = rejectionService.findById(id);
		rejection.setStatus(true);
		rejectionService.save(rejection);
		
		Invoice invoice = invoiceService.findById(rejection.getInvoice().getId());
		invoice.setStatus(false);
		invoiceService.save(invoice);
		
		PucharseOrder order = pucharseOrderService.findById(invoice.getPucharseOrder().getId()); 
		order.setStatus(false);
		pucharseOrderService.save(order);
		
		return "redirect:/rejection";
	}
	
	@RequestMapping(value = "cancel/{id}",method = RequestMethod.GET)
	public String cancel(ModelMap model,@PathVariable("id") int id) {
		Rejection rejection = rejectionService.findById(id);
		rejection.setStatus(false);
		rejectionService.save(rejection);
		
		Invoice invoice = invoiceService.findById(rejection.getInvoice().getId());
		invoice.setStatus(true);
		invoiceService.save(invoice);
		
		PucharseOrder order = pucharseOrderService.findById(invoice.getPucharseOrder().getId()); 
		order.setStatus(true);
		pucharseOrderService.save(order);
		
		model.put("rejections", rejectionService.findAll());
		return "redirect:/rejection";
	}
	
	
}
