package com.example.demo.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Category;

@Repository("categoryRepository")
public interface CategoryRepository extends CrudRepository<Category, Integer>{
	
}
