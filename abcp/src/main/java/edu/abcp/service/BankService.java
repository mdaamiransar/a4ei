package edu.abcp.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Bank;
import edu.abcp.repository.BankRepository;

@Transactional
@Service
public class BankService
{
	protected static Logger logger = Logger.getLogger("service");
	
	@Autowired
	private BankRepository bankRepository;
	
	public Boolean create(Bank c) 
	{
		Bank saved = bankRepository.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}

	public Boolean update(Bank c) 
	{
		/*Category existingCategory = bankRepository.findOne(c.getId());
		if (existingCategory == null) 
			return false;
		
		existingCategory.setName(c.getName());
		
		Category saved = bankRepository.save(existingCategory);
		if (saved == null) 
			return false;*/
		
		return true;
	}

	public Boolean delete(Long id) 
	{
		Bank existingCategory = bankRepository.findOne(id);
		if (existingCategory == null) 
			return false;
		
		bankRepository.delete(existingCategory);
		
//		Category deletedCategory = bankRepository.findOne(id);
//		if (deletedCategory != null) 
//			return false;

		return true;
	}

	public List<Bank> findAll() 
	{
		List<Bank> list = bankRepository.findAll();
		return list;
	}

	public Bank findById(Long id) 
	{
		Bank category = bankRepository.findOne(id);
		return category;
	}
	
}
