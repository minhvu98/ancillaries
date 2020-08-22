package com.example.demo.service;

import com.example.demo.entities.Credit;

public interface CreditService {
	public Iterable<Credit> findAll();
	public Credit save(Credit credit);
	public Credit findByIdAccount(int id);
	public long count();
}
