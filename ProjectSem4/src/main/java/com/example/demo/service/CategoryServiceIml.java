package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Category;
import com.example.demo.repository.CategoryRepository;

@Service("categoryService")
public class CategoryServiceIml implements CategoryService{

	@Autowired
	CategoryRepository categoryRepository;
	
	@Override
	public Category save(Category category) {
		// TODO Auto-generated method stub
		
		return categoryRepository.save(category);
	}

	@Override
	public Iterable<Category> findAll() {
		// TODO Auto-generated method stub
		return categoryRepository.findAll();
	}

	@Override
	public Category findById(int id) {
		// TODO Auto-generated method stub
		return categoryRepository.findById(id).get();
	}

}
