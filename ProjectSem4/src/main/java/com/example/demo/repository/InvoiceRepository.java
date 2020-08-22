package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Invoice;
import com.fasterxml.jackson.annotation.JacksonInject.Value;

@Repository("invoiceRepository")
public interface InvoiceRepository extends CrudRepository<Invoice, Integer> {
	@Query(value = "SELECT sum(total) FROM invoice left join pucharse_order on invoice.pucharseorder_id = pucharse_order.id WHERE pucharse_order.account_id = :account_id",nativeQuery = true)
	public double sumPrice(@Param("account_id") int id);
	@Query(value ="select * from invoice left join pucharse_order on invoice.pucharseorder_id = pucharse_order.id where pucharse_order.account_id = :id",nativeQuery = true)
	public Iterable<Invoice> findByIdAccount(@Param("id") int id);
	
	@Query(value = "select count(id) from invoice",nativeQuery = true)
	public long count();
}
