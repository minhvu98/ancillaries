package com.example.demo.service;

import com.example.demo.entities.PucharseOrder;

public interface PucharseOrderService {
	public Iterable<PucharseOrder> findAll();
	
	public PucharseOrder save(PucharseOrder pucharseOrder);

	public int sumOrderQuantily(int id);
	
	public PucharseOrder findById(int id);
	public long count();
	
	public void deleteByIdAccount(int id);
}
