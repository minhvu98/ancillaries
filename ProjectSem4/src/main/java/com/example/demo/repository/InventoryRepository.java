package com.example.demo.repository;


import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Inventory;

@Repository("inventoryRepository")
public interface InventoryRepository extends CrudRepository<Inventory, Integer>{
	@Query(value = "select sum(quantity) from inventory where product_id = :id",nativeQuery = true)
	public int inventorySumPriceOfProduct(@Param("id")int product_id);
}