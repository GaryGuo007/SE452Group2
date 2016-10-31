package edu.depaul.se;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import edu.depaul.se.worker.Worker;
import edu.depaul.se.worker.jpa.WorkerService;

@Controller
public class ResultsController {
	
	 
	 @RequestMapping(value = "/results")
	    public ModelAndView helloWorld() {

	        String message = "Hello World";
	        return new ModelAndView("results", "message", message); 
	    }
	 
	 
	 @RequestMapping(value = "/results", method = RequestMethod.GET)
	    public ModelAndView showResult(@RequestParam("getId") String getID, ModelMap model){

		 	boolean idTrue = false;
		 
		 	if(!getID.isEmpty()){
		 		idTrue = true;
		 	}
		 	
		 	
		 
		 	
		 	
	        WorkerService ws = new WorkerService();
	        Worker resultWorker = (Worker) ws.getWorkerById(getID);
	        
	        String mapLink = "https://google.com/maps/search/"+resultWorker.getZip();
	        
	    	model.addAttribute("idGet", idTrue);
	        model.addAttribute("work",resultWorker);
	        model.addAttribute("zipLink",mapLink);
	        
	       	       	        
	        return new ModelAndView("results"); 
	    }
	
	 
	 
	 
	

	 

}
