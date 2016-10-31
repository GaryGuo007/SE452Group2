package edu.depaul.se;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 

@Controller
public class AboutController {
	 
	 
	 @RequestMapping("/about")
	    public ModelAndView helloWorld() {

	        String message = "Hello World";
	        return new ModelAndView("about", "message", message); 
	    }
	

}