package com.example.demo.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Inventory;
import com.example.demo.repository.InventoryRepository;

@Service("inventoryService")
public class InventoryServiceIml implements InventoryService {
	@Autowired
	InventoryRepository inventoryRepository;
	
	@Override
	public int inventorySumPriceOfProduct(int product_id) {
		// TODO Auto-generated method stub
		return inventoryRepository.inventorySumPriceOfProduct(product_id);
	}

	@Override
	public Inventory findById(int id) {
		// TODO Auto-generated method stub
		return inventoryRepository.findById(id).get();
	}

	@Override
	public Iterable<Inventory> findAll() {
		// TODO Auto-generated method stub
		return inventoryRepository.findAll();
	}

	@Override
	public Inventory save(Inventory inventory) {
		// TODO Auto-generated method stub
		return inventoryRepository.save(inventory);
	}

	
}
