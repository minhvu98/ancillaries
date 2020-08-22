package com.example.demo.repository;



import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.demo.entities.Account;

@Repository("accountRepository")
public interface AccountRepository extends CrudRepository<Account, Integer>{
	@Query("from Account where email = :keyword")
	public Account findByUsername(@Param("keyword") String keyword);

	@Query("from Account where username = :username and status = :status")
	public Account findByUsernameAndStatus(@Param("username") String username, @Param("status") boolean status);
	
	@Query(value = "select count(id) from account",nativeQuery = true)
	public long count();
}
