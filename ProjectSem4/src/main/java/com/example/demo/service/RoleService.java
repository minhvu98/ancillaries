package com.example.demo.service;

import com.example.demo.entities.Role;

public interface RoleService {
	public Iterable<Role> findAll();
	public Role findById(int id);
	public Role save(Role role);
}
