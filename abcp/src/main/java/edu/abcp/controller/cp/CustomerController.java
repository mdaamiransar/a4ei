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
import edu.abcp.domain.Customer;
import edu.abcp.service.BankService;
import edu.abcp.service.CustomerService;;

@Controller
public class CustomerController 
{   	
	protected static Logger logger = Logger.getLogger("controller");
	
	@Autowired
	private CustomerService customerService;	
	
	@Autowired
	private BankService bankService;	
	
	@RequestMapping(value = "/customerlist", method = RequestMethod.GET)
	public String getAll(Model model)throws Exception
	{
		model.addAttribute("customer", new Customer());
		model.addAttribute("listBank", this.bankService.findAll());
		model.addAttribute("listCustomer", this.customerService.findAll());
		return "controlpanel/customer";
	}
	
	
	@RequestMapping(value= "/customer/add", method = RequestMethod.POST)
	public String add(@ModelAttribute("customerAttribute") Customer customer)throws Exception
	{
		if(customer.getId() == 0L)
		{
//		customer.setBank(new Bank());
//		customer.setName(customer.getName());
		
			this.customerService.create(customer);
		}
		else
		{
			this.customerService.update(customer);
		}
		
		return "redirect:/customerlist";
		
	}
	
	@RequestMapping("/customer/delete/{id}")
    public String delete(@PathVariable("id") Long id)throws Exception
	{	
        this.customerService.delete(id);
        return "redirect:/customerlist";
    }
 
    /*@RequestMapping(value="/Customer/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") Long id, Model model)
    {	
		model.addAttribute("Customer", this.customerService.findById(id));
        model.addAttribute("listCustomer", this.customerService.findAll());
        return "controlpanel/test"; 
    }*/
	
	/*@RequestMapping("/test")
    public String edit(@RequestParam Long id, Model model, @ModelAttribute Customer Customer)
    {	
		Customer = this.customerService.findById(id);
		model.addAttribute("Customer", Customer);
        model.addAttribute("listCustomer", this.customerService.findAll());
        return "controlpanel/test"; 
    }*/
	
	@RequestMapping("/customer")
    public String edit(@RequestParam Long id, Model model)throws Exception
    {	
		logger.debug("");
		Customer customer = this.customerService.findById(id);

		model.addAttribute("customer", customer);
		model.addAttribute("listBank", this.bankService.findAll());
        model.addAttribute("listCustomer", this.customerService.findAll());
        return "controlpanel/customer"; 
    }


}
