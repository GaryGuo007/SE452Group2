package edu.depaul.se;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import edu.depaul.se.customer.Customer;

@Component
@Scope("session")
public class Session {

	private String name;
	private boolean loggedIn;
	private Customer customer;
	
	public Session() {
		this.name = "Not logged in";
		this.loggedIn = false;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public boolean isLoggedIn() {
		return loggedIn;
	}
	public void setLoggedIn(boolean loggedIn) {
		this.loggedIn = loggedIn;
	}
	public void setCustomer(Customer cust) {
		this.customer = cust;
	}
	public Customer getCustomer(){
		return this.customer;
	}
	
}
