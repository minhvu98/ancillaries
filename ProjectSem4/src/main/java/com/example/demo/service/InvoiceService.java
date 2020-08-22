package com.example.demo.service;

import com.example.demo.entities.Invoice;

public interface InvoiceService {
	public Iterable<Invoice> findAll();
	public Invoice findById(int id);
	public Invoice save(Invoice invoice);
	public void deleteById(int id);
	public double sumPrice(int id);
	public Iterable<Invoice> findByIdAccount(int id);
	public long count();
}
