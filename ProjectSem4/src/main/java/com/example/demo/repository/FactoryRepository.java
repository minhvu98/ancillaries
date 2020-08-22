package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.Factory;

public interface FactoryRepository extends CrudRepository<Factory, Integer>{
	@Query(value = "select count(id) from fatory",nativeQuery = true)
	public long count();
}
