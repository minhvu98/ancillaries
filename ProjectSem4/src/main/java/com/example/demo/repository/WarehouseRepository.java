package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Warehouse;

@Repository("warehouseRepository")
public interface WarehouseRepository extends CrudRepository<Warehouse, Integer>{
	@Query(value = "select count(id) from warehouse",nativeQuery = true)
	public long count();
}
