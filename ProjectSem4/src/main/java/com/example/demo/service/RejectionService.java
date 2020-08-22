package com.example.demo.service;

import com.example.demo.entities.Rejection;

public interface RejectionService {
	public Iterable<Rejection> findAll();
	public Rejection save(Rejection rejection);
	public Rejection findById(int id);
	public long count();
}
