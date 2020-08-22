package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.PucharseOrder;
import com.example.demo.repository.PucharseOrderRepository;

@Service("pucharseorderService")
public class PucharseOrderServiceIml implements PucharseOrderService{
	@Autowired
	PucharseOrderRepository pucharseOrderRepository;

	@Override
	public Iterable<PucharseOrder> findAll() {
		// TODO Auto-generated method stub
		return pucharseOrderRepository.findAll();
	}

	@Override
	public PucharseOrder save(PucharseOrder pucharseOrder) {
		// TODO Auto-generated method stub
		return pucharseOrderRepository.save(pucharseOrder);
	}

	@Override
	public int sumOrderQuantily(int id) {
		// TODO Auto-generated method stub
		return pucharseOrderRepository.sumOrderQuantily(id);
	}

	@Override
	public PucharseOrder findById(int id) {
		// TODO Auto-generated method stub
		return pucharseOrderRepository.findById(id).get();
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return pucharseOrderRepository.count();
	}

	@Override
	public void deleteByIdAccount(int id) {
		// TODO Auto-generated method stub
		pucharseOrderRepository.deleteByIdAccount(id);
	}

}
