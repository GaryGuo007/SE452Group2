package edu.depaul.se;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.depaul.se.customer.Customer;
import edu.depaul.se.customer.jpa.CustomerService;
import edu.depaul.se.worker.Worker;

@Controller
@Scope("session")
public class LoginController {

	@Autowired
	private Session session;

	@RequestMapping(value = "/login")
	public ModelAndView login() {
		System.out.println("DEBUG: In LoginController ");
		System.out.println(" session " + session);
		if (session.isLoggedIn()) {
			if (session.getCustomer() == null) {
				System.out.println("DEBUG: Error, isLoggedIn but no Customer object " + session.toString());
			}
			return new ModelAndView("customerRegistration", "Customer", session.getCustomer());
		} else {
			return new ModelAndView("login", "Login", new Login());
		}
	}

	@RequestMapping(value = "/logout")
	public ModelAndView logout() {
		System.out.println("DEBUG: In LoginController ");
		System.out.println(" session " + session);
		if (session.isLoggedIn()) {
			session.setLoggedIn(false);
			session.setCustomer(new Customer());
			session.setName("Not logged in");
		}
		return new ModelAndView("login", "Login", new Login());
	}

	@RequestMapping(value = "/performLogin")
	public ModelAndView performLogin(@ModelAttribute("login") Login login, ModelMap model) {
		Customer customer = validateLogin(login);
		ModelAndView mav = new ModelAndView("index");
		if (customer == null) {
			session.setLoggedIn(false);
			session.setName("Not Logged In");
			session.setEmail("");
			session.setCustomer(null);
			mav = new ModelAndView("login", "Login", new Login());
		} else {
			session.setLoggedIn(true);
			session.setName(customer.getFirstName());
			session.setEmail(customer.getEmail());
			session.setCustomer(customer);
		}
		return mav;
	}

	private Customer validateLogin(Login login) {
		Customer customer = null;
		CustomerService cs = new CustomerService();
		Customer testCust = (Customer) cs.getCustomerByEmail(login.getEmail());
		if (testCust != null) {
			if (login.getPassword().trim() != null && testCust.getPassword().equals(login.getPassword())) {
				customer = testCust;
			}
		}
		cs.close();
		if (customer == null) {
			System.out.println("DEBUG: Did not find login " + login);
		}
		return customer;
	}

}
