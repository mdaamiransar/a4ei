package edu.abcp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import edu.abcp.domain.Category;

public interface CategoryRepository extends JpaRepository<Category, Long> {
	
	
}
