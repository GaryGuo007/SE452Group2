package edu.depaul.se;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	 
		@RequestMapping(value = "/test")
	    public ModelAndView test() {

	        String message = "Hello World";
	        return new ModelAndView("test", "message", message); 
	    }
	

}