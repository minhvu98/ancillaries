package com.example.demo.service;

import org.springframework.security.core.userdetails.UserDetailsService;

import com.example.demo.entities.Account;

public interface AccountService extends UserDetailsService{
	public Account findByUsername(String username);
	public Iterable<Account> findAll();
	public Account findById(int id);
	public Account save(Account account);
	public void deleteById(int id);
	public long count();
}
