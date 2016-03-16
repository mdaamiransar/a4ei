package edu.abcp.controller.cp;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import edu.abcp.domain.Category;
import edu.abcp.service.CategoryService;;

@Controller
public class CategoryController 
{   	
	protected static Logger logger = Logger.getLogger("controller");
	
	@Autowired
	private CategoryService categoryService;		
	
	@RequestMapping(value = "/categorylist", method = RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("category", new Category());
		model.addAttribute("listCategory", this.categoryService.findAll());
		//return "controlpanel/category";
		return "controlpanel/category";
	}
	
	
	@RequestMapping(value= "/category/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("categoryAttribute") Category category)
	{
//		if(category.getId() == 0L)
//		{
			this.categoryService.create(category);
//		}
		/*else
		{
			this.categoryService.update(category);
		}	*/
		
		return "redirect:/categorylist";
		
	}
	
	@RequestMapping("/category/delete/{id}")
    public String delete(@PathVariable("id") Long id)
	{	
        this.categoryService.delete(id);
        return "redirect:/categorylist";
    }
 
    /*@RequestMapping(value="/category/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model)
    {	
		model.addAttribute("category", this.categoryService.findById(id));
        model.addAttribute("listCategory", this.categoryService.findAll());
        return "controlpanel/test"; 
    }*/
	
	/*@RequestMapping("/test")
    public String edit(@RequestParam Long id, Model model, @ModelAttribute Category category)
    {	
		category = this.categoryService.findById(id);
		model.addAttribute("category", category);
        model.addAttribute("listCategory", this.categoryService.findAll());
        return "controlpanel/test"; 
    }*/
	
	@RequestMapping("/category")
    public String edit(@RequestParam Long id, Model model, @ModelAttribute Category category)
    {	
		category = this.categoryService.findById(id);
		model.addAttribute("category", category);
        model.addAttribute("listCategory", this.categoryService.findAll());
        return "controlpanel/category"; 
    }


}
