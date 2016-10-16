package com.springMVC.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SearchController {
	
	 @RequestMapping("/search")
	    public ModelAndView helloWorld() {

	        String message = "Hello World";
	        return new ModelAndView("search", "message", message); 
	    }
	

}
