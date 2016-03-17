package edu.abcp.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Bank;
import edu.abcp.domain.Customer;
import edu.abcp.repository.CustomerRepository;

@Transactional
@Service
public class CustomerService
{
	protected static Logger logger = Logger.getLogger("CustomerService");
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private BankService bankRepository;
	
	public Boolean create(Customer c) throws Exception
	{
		Bank existingBank = bankRepository.findById(Long.parseLong(c.getBank().getName()));
		c.setBank(existingBank);
		c.setName(c.getName());
		
		//user.getRole().setUser(user);
		
		Customer saved = customerRepository.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}

	public Boolean update(Customer c) throws Exception
	{
		Customer existingCustomer = customerRepository.findOne(c.getId());
		if (existingCustomer == null) 
			return false;
		
		Bank existingBank = bankRepository.findById(Long.parseLong(c.getBank().getName()));
		
		existingCustomer.setBank(existingBank);
		existingCustomer.setName(c.getName());
		
		Customer saved = customerRepository.save(existingCustomer);
		if (saved == null) 
			return false;
		
		return true;
	}

	public Boolean delete(Long id) throws Exception
	{
		Customer existingCategory = customerRepository.findOne(id);
		if (existingCategory == null) 
			return false;
		
		customerRepository.delete(existingCategory);
		
//		Category deletedCategory = customerRepository.findOne(id);
//		if (deletedCategory != null) 
//			return false;

		return true;
	}

	public List<Customer> findAll() throws Exception
	{
		List<Customer> list = customerRepository.findAll();
		return list;
	}

	public Customer findById(Long id) throws Exception
	{
		Customer category = customerRepository.findOne(id);
		return category;
	}

	Iterable<Long> ids;
	public List<Customer> findListById(Long ids) throws Exception
	{
		Iterable<Customer> list = customerRepository.findAll(this.ids);
		return (List<Customer>) list;
	}
	
}
