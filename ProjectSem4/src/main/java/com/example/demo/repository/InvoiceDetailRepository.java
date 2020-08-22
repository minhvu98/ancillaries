package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.example.demo.entities.InvoiceDetails;

public interface InvoiceDetailRepository extends CrudRepository<InvoiceDetails, Integer>{
	
	@Query(value = "select sum(quantity) from invoice_details where invoice_id = :id",nativeQuery = true)
	public int sumQuantityById(@Param("id") int invoice_id);
}
