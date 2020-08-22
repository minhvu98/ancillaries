package com.example.demo.controllers.admin;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.util.Calendar;
import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.entities.Account;
import com.example.demo.entities.Credit;
import com.example.demo.entities.Inventory;
import com.example.demo.entities.Invoice;
import com.example.demo.entities.InvoiceDetails;
import com.example.demo.entities.PucharseOrder;
import com.example.demo.service.AccountService;
import com.example.demo.service.CreditService;
import com.example.demo.service.InventoryService;
import com.example.demo.service.InvoiceDetailService;
import com.example.demo.service.InvoiceService;
import com.example.demo.service.ProductService;
import com.example.demo.service.PucharseOrderService;
import com.example.demo.service.WarehouseService;

@Controller
@RequestMapping(value = "order")
public class OrderController {

	@Autowired
	PucharseOrderService pucharseOrderService;
	@Autowired
	InventoryService inventoryService;
	@Autowired
	ProductService productService;
	@Autowired 
	AccountService accountService;
	@Autowired
	InvoiceService invoiceService;
	@Autowired
	WarehouseService warehouseService;
	@Autowired
	InvoiceDetailService invoiceDetailService;
	@Autowired
	CreditService creditService;
	
	@RequestMapping(value = "/index/{id}", method = RequestMethod.GET)
	public String index(Model model, @PathVariable("id") int product_id, RedirectAttributes ra) {
		int result = 0;
		int sumInventory = 0;
		int sumOrder = 0;
		sumInventory = inventoryService.inventorySumPriceOfProduct(product_id);
		
		
		if (pucharseOrderService.findAll() == null) {
			sumOrder = 0;
		}
		sumOrder = pucharseOrderService.sumOrderQuantily(product_id);
		
		model.addAttribute("product_id",product_id);
		model.addAttribute("quantily", sumInventory - sumOrder);
		model.addAttribute("pucharseOrder", new PucharseOrder());

		return "order.index";

	}

	@RequestMapping(value = "/pucharseOrder/{id}", method = RequestMethod.POST)
	public String pucharseOrder(Model model, RedirectAttributes ra,
			@ModelAttribute("pucharseOrder") PucharseOrder pucharseOrder, @PathVariable("id") int product_id,
			Authentication authentication) throws IOException {
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Date date = new Date();

		Account account = accountService.findByUsername(authentication.getName());

		PucharseOrder order = new PucharseOrder();
		order.setCreated(date);
		order.setQuantity(pucharseOrder.getQuantity());
		order.setAccount(account);
		order.setProduct(productService.findById(product_id));
		order.setStatus(false);

		if (pucharseOrder.getQuantity() > 0) {
			if (pucharseOrderService.save(order) != null) {
				ra.addFlashAttribute("mess", "Order Succesful");
				return "redirect:/product/index";
			}
		}

		ra.addFlashAttribute("mess", "Order Failed");
		return "redirect:/product/index";

	}
	
	@RequestMapping(value = "checkApproval/{id}",method = RequestMethod.GET)
	public String checkApproval(@PathVariable("id")int pucharse_id,ModelMap model) {
		
		model.put("inventories",inventoryService.findAll());
		model.put("order",pucharseOrderService.findById(pucharse_id));
		return "pucharseorder.approval";
	}
	
	@RequestMapping(value = "approval/{quantity_product}/{order_id}",method = RequestMethod.POST)
	public String Approval(@RequestParam("quantity_order") int[] quantity_order,@RequestParam("inventory_id") int[] listIdInventory,
			@PathVariable("quantity_product") int quantity_product,
			@PathVariable("order_id") int pucharseorder_id,
			ModelMap model) {
		int sumquantity_product = 0;
		for (int i = 0; i < listIdInventory.length; i++) {
			sumquantity_product += quantity_order[i];
		}
		if(sumquantity_product > quantity_product) {
			System.out.println("approval false !");
			return "redirect:/pucharseorder";
		}else if(sumquantity_product == quantity_product){
			
			for (int i = 0; i < listIdInventory.length; i++) {
				Inventory inventory = inventoryService.findById(i+1);
				inventory.setQuantity(inventory.getQuantity()-quantity_order[i]);	
				inventoryService.save(inventory);
			}
			PucharseOrder pucharseorder = pucharseOrderService.findById(pucharseorder_id);
			
			pucharseorder.setStatus(true);
			pucharseOrderService.save(pucharseorder);
			
			
			
			Invoice invoice = new Invoice();	
			invoice.setPucharseOrder(pucharseorder);
			invoice.setStatus(true);
			invoice.setCreated(pucharseorder.getCreated());
			invoice.setTotal(pucharseorder.getProduct().getPrice()*sumquantity_product);
			invoiceService.save(invoice);
			
			for (int j = 0; j < listIdInventory.length; j++) {
				InvoiceDetails invoiceDetails = new InvoiceDetails();
				invoiceDetails.setInvoice(invoice);
				invoiceDetails.setStatus(true);
				invoiceDetails.setWarehouse(warehouseService.findById(j+1));
				//get price
				invoiceDetails.setQuantity(quantity_order[j]);
				invoiceDetails.setInventory(inventoryService.findById(j+1));
				
				invoiceDetailService.save(invoiceDetails);
			}
			
			Credit credit = new Credit();
			credit.setAccount(pucharseorder.getAccount());
			credit.setAmount(invoiceService.sumPrice(pucharseorder.getAccount().getId()));
			credit.setCreated(new Date());
			//format date
			Date currentdate = new Date();
			Calendar calendar = Calendar.getInstance();
			calendar.setTime(currentdate);
			calendar.add(Calendar.DAY_OF_MONTH, pucharseorder.getAccount().getDayTerm());
			Date date = calendar.getTime();
			credit.setDayTerm(date);
			
			creditService.save(credit);
		}
		return "redirect:/pucharseorder";
	}
}
