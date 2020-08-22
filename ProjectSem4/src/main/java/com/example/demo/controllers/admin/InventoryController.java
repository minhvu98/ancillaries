package com.example.demo.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.example.demo.entities.Inventory;
import com.example.demo.service.InventoryService;

@Controller
@RequestMapping(value = "inventory")
public class InventoryController {
	
	@Autowired
	InventoryService inventoryService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		Iterable<Inventory> inventories = inventoryService.findAll();
		System.out.println(inventories.toString());
		model.put("inventories",inventoryService.findAll());
		
		return "inventory.index";
	}
}
