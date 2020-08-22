package com.example.demo.service;

import com.example.demo.entities.Category;

public interface CategoryService {
	public Category save(Category category);
	public Iterable<Category> findAll();
	public Category findById(int id);
}
