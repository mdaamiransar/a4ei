package edu.abcp.repository;

import org.springframework.data.jpa.repository.JpaRepository;


import edu.abcp.domain.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long> {
	
	
}
