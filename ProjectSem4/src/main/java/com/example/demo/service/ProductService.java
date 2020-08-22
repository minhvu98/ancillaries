package com.example.demo.service;

import com.example.demo.entities.Product;

public interface ProductService {
	public Iterable<Product> findAll();

	public Product findById(int id);

	public Product save(Product product);

	void deleteById(int id);
}
