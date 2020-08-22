package com.example.demo.service;

import org.springframework.data.repository.query.Param;

import com.example.demo.entities.InvoiceDetails;

public interface InvoiceDetailService {
	public Iterable<InvoiceDetails> findAdll();
	public InvoiceDetails save(InvoiceDetails detail);
	public int sumQuantityById(int invoice_id);
}
