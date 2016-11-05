package edu.depaul.se;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.depaul.se.worker.*;
import edu.depaul.se.worker.jpa.WorkerService;

@Controller
@Scope("session")
public class SearchController {

	@Autowired
	private Session session;

	@RequestMapping(value = "/search")
	public ModelAndView search() {

		if (session.isLoggedIn()) {
			System.out.println("DEBUG: In SearchController ");

		}

		return new ModelAndView("search", "Search", new Search());
	}

	@RequestMapping(value = "/performSearch")
	public ModelAndView performSearch(@ModelAttribute("search") Search search, ModelMap model) {

		System.out.println("DEBUG" + " ");

		double cost = search.getCost();
		String skill = search.getProfession();
		String zipcode = search.getZipcode();
		String city = search.getCity();
		String state = search.getState();
		List<Worker> finalCust = new ArrayList<Worker>();
		String error;

		if (search.getCost() <= 0) {
			error = "Cost must be a number great than 0.";
			System.out.println(search.getState());
			model.addAttribute("Error", error);
			return new ModelAndView("search", "Search", new Search());
		}

		// Gets a list of all by profession.
		WorkerService ws = new WorkerService();
		List<Worker> cust = ws.getWorkerByProfession(search.getProfession());
		if(cust==null){
		for (Worker x : cust) {

			// Form validation will prevent city, state, cost, and skill from
			// being null.
			// The only check will need to be for zip in which isn't required in
			// the cast a large city has multiple zipcodes.

			double tempCost = x.getCost();
			String tempZip = x.getZip();
			String tempSkill = x.getSkill().toLowerCase();
			String tempCity = x.getCity().toLowerCase();
			String tempState = x.getState().toLowerCase();

			if (cost <= tempCost && tempSkill.equals(skill.toLowerCase()) && tempCity.equals(city.toLowerCase())
					&& tempState.equals(state.toLowerCase())) {
				if (zipcode.length() > 0) {
					if (tempZip.equals(zipcode)) {
						finalCust.add(x);
					}
				} else {
					finalCust.add(x);
				}
			}

		}
		}
		// Adds the final list of workers for the result page to loop through.
		model.addAttribute("dbResults", finalCust);

		return new ModelAndView("results", "Search", new Search());

	}

}