package edu.depaul.se;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.depaul.se.worker.Worker;

@Controller
@Scope("session")
public class LoginController {
	
	@Autowired
	private Session session;
	
	@RequestMapping(value = "/login")
	public ModelAndView login(){
		System.out.println("DEBUG: In LoginController ");
		session.setName("This is a new session object");
		System.out.println(" session " + session );
		return new ModelAndView("login", "command", new Login());		
	}
	
	@RequestMapping(value="/performLogin")
	public String performLogin(@ModelAttribute("login")Login login, ModelMap model) {
		session.setName(login.getName());
		return "index";
	}
	
}
