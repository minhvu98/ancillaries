package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.InvoiceDetails;
import com.example.demo.repository.InvoiceDetailRepository;

@Service("invoiceDetailService")
public class InvoiceDetailServiceIml implements InvoiceDetailService{
	@Autowired
	InvoiceDetailRepository invoiceDetailRepository;

	@Override
	public Iterable<InvoiceDetails> findAdll() {
		// TODO Auto-generated method stub
		return invoiceDetailRepository.findAll();
	}

	@Override
	public InvoiceDetails save(InvoiceDetails detail) {
		// TODO Auto-generated method stub
		return invoiceDetailRepository.save(detail);
	}

	@Override
	public int sumQuantityById(int invoice_id) {
		// TODO Auto-generated method stub
		return invoiceDetailRepository.sumQuantityById(invoice_id);
	}
	
}
