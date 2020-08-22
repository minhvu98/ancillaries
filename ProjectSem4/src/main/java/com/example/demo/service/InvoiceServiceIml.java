package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Invoice;
import com.example.demo.repository.InvoiceRepository;

@Service
public class InvoiceServiceIml implements InvoiceService{

	@Autowired
	InvoiceRepository invoiceRepository;
	
	@Override
	public Iterable<Invoice> findAll() {
		// TODO Auto-generated method stub
		return invoiceRepository.findAll();
	}

	@Override
	public Invoice findById(int id) {
		// TODO Auto-generated method stub
		return invoiceRepository.findById(id).get();
	}

	@Override
	public Invoice save(Invoice invoice) {
		// TODO Auto-generated method stub
		return invoiceRepository.save(invoice);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		invoiceRepository.deleteById(id);
	}

	@Override
	public double sumPrice(int id) {
		// TODO Auto-generated method stub
		return invoiceRepository.sumPrice(id);
	}

	@Override
	public Iterable<Invoice> findByIdAccount(int id) {
		// TODO Auto-generated method stub
		return invoiceRepository.findByIdAccount(id);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return invoiceRepository.count();
	}
	
}
