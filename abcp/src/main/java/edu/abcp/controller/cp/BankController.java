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

import edu.abcp.domain.Bank;
import edu.abcp.service.BankService;;

@Controller
public class BankController 
{   	
	protected static Logger logger = Logger.getLogger("controller");
	
	@Autowired
	private BankService bankService;		
	
	@RequestMapping(value = "/banklist", method = RequestMethod.GET)
	public String getAll(Model model) {
		model.addAttribute("bank", new Bank());
		model.addAttribute("listBank", this.bankService.findAll());
		//return "controlpanel/category";
		return "controlpanel/bank";
	}
	
	
	@RequestMapping(value= "/bank/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("bankAttribute") Bank bank)
	{
//		if(category.getId() == 0L)
//		{
			this.bankService.create(bank);
//		}
		/*else
		{
			this.categoryService.update(category);
		}	*/
		
		return "redirect:/banklist";
		
	}
	
	@RequestMapping("/bank/delete/{id}")
    public String delete(@PathVariable("id") Long id)
	{	
        this.bankService.delete(id);
        return "redirect:/banklist";
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
	
	@RequestMapping("/bank")
    public String edit(@RequestParam Long id, Model model, @ModelAttribute Bank bank)
    {	
		bank = this.bankService.findById(id);
		model.addAttribute("bank", bank);
        model.addAttribute("listBank", this.bankService.findAll());
        return "controlpanel/bank"; 
    }


}
