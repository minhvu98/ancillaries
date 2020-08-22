package com.example.demo.controllers.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.entities.Warehouse;
import com.example.demo.repository.WarehouseRepository;
import com.example.demo.service.WarehouseService;

@Controller
@RequestMapping(value = "admin/warehouse")
public class WarehouseController {
	
	@Autowired
	WarehouseService warehouseService;
	
	@RequestMapping(value = {"","index"},method = RequestMethod.GET)
	public String index(ModelMap model) {
		model.addAttribute("warehouses", warehouseService.findAll());
		
		return "warehouse.index";
	}
	
	@RequestMapping(value = "save/{id}",method = RequestMethod.GET)
	public String add(ModelMap model,@PathVariable("id") int id,
			@ModelAttribute("warehouse")Warehouse warehouse) {
		warehouseService.save(warehouse);
		
		return "redirect:/admin/warehouse";
	}
	
	@RequestMapping(value = "saveAdd",method = RequestMethod.GET)
	public String saveAdd(ModelMap model,@ModelAttribute("warehouse")Warehouse warehouse) {
		warehouseService.save(warehouse);				
		return "redirect:/admin/warehouse";
	}
	
	@RequestMapping(value = "edit/{id}",method = RequestMethod.GET)
	public String update(ModelMap model,@PathVariable("id") int id) {
		Warehouse warehouse = warehouseService.findById(id);
		
		if(warehouse != null) {
			model.put("warehouse", warehouse);
			return "warehouse.edit";
		}
		
		return "warehouse.edit";
	}
	
	@RequestMapping(value = "add",method = RequestMethod.GET)
	public String add(ModelMap model) {
		model.put("warehouse", new Warehouse());
		return "warehouse.add";
	}
}
