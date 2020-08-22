package com.example.demo.service;

import java.util.Optional;

import com.example.demo.entities.Inventory;

public interface InventoryService  {
	public int inventorySumPriceOfProduct(int product_id);
	
	public Inventory findById(int id);

	public Iterable<Inventory> findAll();
	
	public Inventory save(Inventory inventory);
	
}
