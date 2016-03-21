package edu.abcp.controller;

//import org.springframework.security.core.context.SecurityContextHolder;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MediatorController {
	
	protected static Logger logger = Logger.getLogger("controller");

	@RequestMapping
	public String getHomePage(ModelMap model) {
		//model.addAttribute("authname", SecurityContextHolder.getContext().getAuthentication().getName());
		logger.debug("");
		model.addAttribute("hi","John");
		return "welcome";
	}
}