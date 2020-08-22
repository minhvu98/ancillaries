package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;

import com.example.demo.entities.Rejection;

public interface RejectionRepository extends CrudRepository<Rejection, Integer>{

	
	@Query(value = "select count(id) from rejection",nativeQuery = true)
	public long count();
}
