package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Rejection;
import com.example.demo.repository.RejectionRepository;

@Service("rejectionService")
public class RejectionServiceIml implements RejectionService{

	@Autowired
	RejectionRepository rejectionRepository;
	
	@Override
	public Iterable<Rejection> findAll() {
		// TODO Auto-generated method stub
		return rejectionRepository.findAll();
	}

	@Override
	public Rejection save(Rejection rejection) {
		// TODO Auto-generated method stub
		return rejectionRepository.save(rejection);
	}

	@Override
	public Rejection findById(int id) {
		// TODO Auto-generated method stub
		return rejectionRepository.findById(id).get();
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return rejectionRepository.count();
	}
	
}
