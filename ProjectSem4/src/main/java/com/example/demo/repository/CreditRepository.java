package com.example.demo.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Credit;

@Repository("creditRepository")
public interface CreditRepository extends CrudRepository<Credit, Integer>{
	@Query("from Credit where account_id = :id")
	public Credit findByIdAccount(@Param("id") int id);
}
