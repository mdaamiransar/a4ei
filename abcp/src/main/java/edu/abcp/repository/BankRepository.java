package edu.abcp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import edu.abcp.domain.Bank;

public interface BankRepository extends JpaRepository<Bank, Long> {
	
	
}
