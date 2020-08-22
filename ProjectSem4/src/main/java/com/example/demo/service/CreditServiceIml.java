package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Credit;
import com.example.demo.repository.CreditRepository;

@Service("creditService")
public class CreditServiceIml implements CreditService{

	@Autowired
	CreditRepository creditRepository;

	@Override
	public Iterable<Credit> findAll() {
		// TODO Auto-generated method stub
		return creditRepository.findAll();
	}

	@Override
	public Credit save(Credit credit) {
		// TODO Auto-generated method stub
		return creditRepository.save(credit);
	}

	@Override
	public Credit findByIdAccount(int id) {
		// TODO Auto-generated method stub
		return creditRepository.findByIdAccount(id);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return creditRepository.count();
	}
	
}
