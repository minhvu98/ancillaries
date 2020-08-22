package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.demo.entities.Account;
import com.example.demo.entities.Role;
import com.example.demo.repository.AccountRepository;

@Service("accountService")
public class AccountServiceIml implements AccountService{

	@Autowired
	AccountRepository accountRepository;
	
	@Override
	public Account findByUsername(String username) {
		// TODO Auto-generated method stub
		return accountRepository.findByUsername(username);
	}

	@Override
	public Iterable<Account> findAll() {
		// TODO Auto-generated method stub
		return accountRepository.findAll();
	}

	@Override
	public Account findById(int id) {
		// TODO Auto-generated method stub
		return accountRepository.findById(id).get();
	}

	@Override
	public Account save(Account account) {
		// TODO Auto-generated method stub
		return accountRepository.save(account);
	}

	@Override
	public void deleteById(int id) {
		// TODO Auto-generated method stub
		accountRepository.deleteById(id);
	}

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		Account account = accountRepository.findByUsernameAndStatus(username, true);
		if (account == null) {
			throw new UsernameNotFoundException("Username not found");
		}
		List<GrantedAuthority> grantedAuthorities = new ArrayList<GrantedAuthority>();
		
			grantedAuthorities.add(new SimpleGrantedAuthority(account.getRole().getRole()));
		
		return new User(username, account.getPassword(), grantedAuthorities);
	}

	@Override
	public long count() {
		// TODO Auto-generated method stub
		return accountRepository.count();
	}
	
}
