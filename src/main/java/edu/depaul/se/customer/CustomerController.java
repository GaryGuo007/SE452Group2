package edu.depaul.se.customer;

import edu.depaul.se.Login;
import edu.depaul.se.Session;
import edu.depaul.se.customer.jpa.CustomerService;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@Scope("session")
public class CustomerController {

	@Autowired
	private Session session;

	@RequestMapping(value = { "/customer", "/customerRegistration" })
	public ModelAndView customer() {
		System.out.println("DEBUG: In CustomerController customer ");
		Customer cust = session.getCustomer();
		if (cust == null) {
			cust = new Customer();
			session.setCustomer(cust);
		}
		return new ModelAndView("customerRegistration", "Customer", cust);

	}

	@RequestMapping(value = "/addCustomer")
	public ModelAndView addCustomer(@ModelAttribute("SpringWeb") Customer customer, 
			                        @RequestParam(required=false , value = "register") String actionReg ,
			                        @RequestParam(required=false , value = "update") String actionUpdate ,
			                        @RequestParam(required=false , value = "logout") String actionLogout ,
			                        @RequestParam(required=false , value = "delete") String actionDelete ,
			                        ModelMap model) {
		System.out.println("DEBUG: In CustomerController addCustomer: " + customer);

		// Default behavior is for new customers to go to the login page.
		ModelAndView mav = new ModelAndView("login", "Login", new Login());
		CustomerService cs = new CustomerService();
		if (session.isLoggedIn() && actionLogout != null ) {
			session.setLoggedIn(false);
			mav = new ModelAndView("login", "Login", new Login());
		}
		if (session.isLoggedIn() && actionDelete != null ) {
			Customer cust = session.getCustomer();
			cs.deleteCustomer(cust);
			session.setLoggedIn(false);
			mav = new ModelAndView("login", "Login", new Login());
		}
		if (session.isLoggedIn() && actionUpdate != null ) {
			System.out.println("DEBUG: session cust is " + session.getCustomer());
			customer.setId(session.getCustomer().getId());
			session.setCustomer(customer);
			session.setName(customer.getFirstName());
			cs.updateCustomer(customer);
			mav = new ModelAndView("index");
		}
        if ( !session.isLoggedIn() && actionReg != null ){
			cs.saveCustomer(customer);
		}
		cs.close();
		return mav;
	}

}
