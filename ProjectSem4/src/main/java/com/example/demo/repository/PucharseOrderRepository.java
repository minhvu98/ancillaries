package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.PucharseOrder;

@Repository("purchaseorderRepository")
public interface PucharseOrderRepository extends CrudRepository<PucharseOrder, Integer>{
	@Query(value =  "select sum(quantity) from pucharse_order where product_id = :id ",nativeQuery = true)
	public int sumOrderQuantily(@Param("id") int product_id);
	
	@Query(value =  "select id from pucharse_order where product_id = :id",nativeQuery = true)
	public PucharseOrder findByIdProduct(@Param("id") int product_id);
	
	@Query(value =  "select * from pucharse_order where account_id = :id",nativeQuery = true)
	public PucharseOrder findHistoryByIdAccount(@Param("id") int account_id);
	
	@Query(value = "select count(id) from pucharse_order",nativeQuery = true)
	public long count();
	
	@Query(value =  "delete from pucharse_order where account_id = :id",nativeQuery = true)
	public void deleteByIdAccount(@Param("id") int id);
	
}
