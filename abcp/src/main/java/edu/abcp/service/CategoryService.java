package edu.abcp.service;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.abcp.domain.Category;
import edu.abcp.repository.CategoryRepository;

@Transactional
@Service
public class CategoryService
{
	protected static Logger logger = Logger.getLogger("service");
	
	@Autowired
	private CategoryRepository categoryRepository;
	
	public Boolean create(Category c) 
	{
		Category saved = categoryRepository.save(c);
		if (saved == null) 
			return false;
		
		return true;
	}

	public Boolean update(Category c) 
	{
		/*Category existingCategory = categoryRepository.findOne(c.getId());
		if (existingCategory == null) 
			return false;
		
		existingCategory.setName(c.getName());
		
		Category saved = categoryRepository.save(existingCategory);
		if (saved == null) 
			return false;*/
		
		return true;
	}

	public Boolean delete(Long id) 
	{
		Category existingCategory = categoryRepository.findOne(id);
		if (existingCategory == null) 
			return false;
		
		categoryRepository.delete(existingCategory);
		
//		Category deletedCategory = categoryRepository.findOne(id);
//		if (deletedCategory != null) 
//			return false;

		return true;
	}

	public List<Category> findAll() 
	{
		List<Category> list = categoryRepository.findAll();
		return list;
	}

	public Category findById(Long id) 
	{
		Category category = categoryRepository.findOne(id);
		return category;
	}

	Iterable<Long> ids;
	public List<Category> findListById(Long ids) 
	{
		Iterable<Category> list = categoryRepository.findAll(this.ids);
		return (List<Category>) list;
	}
	
}
