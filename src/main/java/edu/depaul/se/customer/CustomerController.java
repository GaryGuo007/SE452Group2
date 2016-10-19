package edu.depaul.se.customer;

import edu.depaul.se.customer.jpa.CustomerService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import edu.depaul.se.customer.jpa.Customer;

@Controller
public class CustomerController {
	@RequestMapping(value = "/customerRegistration")
	public ModelAndView customer(){
		System.out.println("DEBUG: In CustomerController customer ");
		return new ModelAndView("customerRegistration", "command", new Customer());
		
	}
	
	@RequestMapping(value = "/addCustomer")
	public String addCustomer(@ModelAttribute("SpringWeb")Customer customer, ModelMap model) {
		System.out.println("DEBUG: In CustomerController addCustomer ");
		model.addAttribute("name", customer.getLastName());
		CustomerService cs = new CustomerService();
		cs.saveCustomer(customer);
		return "about";
	}

}
