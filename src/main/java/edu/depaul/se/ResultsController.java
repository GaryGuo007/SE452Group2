package edu.depaul.se;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import edu.depaul.se.customer.Customer;
import edu.depaul.se.customer.jpa.CustomerService;
import edu.depaul.se.transaction.jpa.Transaction;
import edu.depaul.se.transaction.jpa.TransactionService;
import edu.depaul.se.worker.Worker;
import edu.depaul.se.worker.jpa.WorkerService;

@Controller
@Scope("session")
public class ResultsController {

	
	
	private String workerId;
	String currentPage;
	
	@Autowired
	private Session session;
	
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
		 		workerId = getID;
		 		
		 	}
		 	
		 	currentPage = "results.html?getId="+workerId;
		 	

		 	
	        WorkerService ws = new WorkerService();
	        Worker resultWorker = (Worker) ws.getWorkerById(getID);
	        
	        TransactionService ts = new TransactionService();
	        List<Transaction> reviews = new ArrayList<>();
	        
	        reviews = ts.getTransaction(workerId);

	        
	        String mapLink = "https://google.com/maps/search/"+resultWorker.getZip();
	        
	    	model.addAttribute("idGet", idTrue);
	        model.addAttribute("work",resultWorker);
	        model.addAttribute("zipLink",mapLink);
	        model.addAttribute("reviews",reviews);
	        
	        ModelAndView mav = new ModelAndView("results", "Review", new Review());
	       	mav.addObject("id",getID);  
	       	
	        return mav; 
	    }
	 
	
	
 		
	 
	 	@RequestMapping(value="/writeReview")
	 	public ModelAndView writeReviews(@ModelAttribute("result")Review review, ModelMap model) {
	 	
	 		
	 		String first;
	 		String last;
	 		String reviewText = review.getReview().toString();
	 		String customerEmail= session.getEmail();	 	
	 		String error;
	 		
	 		
	 		
	 		
	 		
	 		if(session.isLoggedIn()){
		 	 			 		
		 		TransactionService tranService = new TransactionService();
		 		CustomerService custService = new CustomerService();
			    
		 		Customer c = (Customer) custService.getCustomerByEmail(customerEmail);
		 		first = c.getFirstName();
		 		last = c.getLastName();
			 			                
			    System.out.println(c.getFirstName() + c.getLastName());
		 
		 		Transaction t = new Transaction(workerId,customerEmail,first,last,reviewText); 				
		 		tranService.saveTransaction(t);
		 		
	 		}else{
	 			return new ModelAndView("login", "Login", new Login());
	 		}
	 		
	 		

	 		String redirect = "redirect:/"+currentPage;

		 return new ModelAndView(redirect);
	 }
		
	 
	 
	 
	

	 

}
