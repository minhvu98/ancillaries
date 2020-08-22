package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Warehouse;
import com.example.demo.repository.WarehouseRepository;

@Service("warehouseService")
public class WarehouseServiceIml implements WarehouseService{

	@Autowired
	WarehouseRepository warehouseRepository;
	
	@Override
	public Iterable<Warehouse> findAll() {
		// TODO Auto-generated method stub
		return warehouseRepository.findAll();
	}

	@Override
	public Warehouse findById(int id) {
		// TODO Auto-generated method stub
		return warehouseRepository.findById(id).get();
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		warehouseRepository.deleteById(id);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return warehouseRepository.count();
	}

	@Override
	public Warehouse save(Warehouse warehouse) {
		// TODO Auto-generated method stub
		return warehouseRepository.save(warehouse);
	}

}
