package com.example.demo.service;

import com.example.demo.entities.Warehouse;

public interface WarehouseService {
	public Iterable<Warehouse> findAll();
	public Warehouse findById(int id);
	public void deleteById(int id);
	public long count();
	
	public Warehouse save(Warehouse warehouse);
}
