package edu.depaul.se;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

import edu.depaul.se.customer.Customer;

@Component
@Scope("session")
public class Session {

	private String name;
	private String email;
	private boolean loggedIn;
	private Customer customer;

	public Session() {
		this.name = "/ Not logged in";
		this.email = "";
		this.loggedIn = false;
		this.customer = null;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		// System.out.println("DEBUG: from session, setName " +
		// this.toString());
		this.name = name;
	}

	public boolean isLoggedIn() {
		return loggedIn;
	}

	public void setLoggedIn(boolean loggedIn) {
		// System.out.println("DEBUG: from session, setLoggedIn " +
		// this.toString());
		this.loggedIn = loggedIn;
		if ( loggedIn == false ) {
			this.customer = new Customer();
			this.name = this.customer.getFirstName();
			this.email = this.customer.getEmail();
		}
	}

	public void setCustomer(Customer cust) {
		// System.out.println("DEBUG: from session, setCustomer " +
		// this.toString());
		this.customer = cust;
	}

	public Customer getCustomer() {
		return this.customer;
	}

	public void setEmail(String email) {
		// System.out.println("DEBUG: from session, setCustomer " +
		// this.toString());
		this.email = email;
	}

	public String getEmail() {
		return email;
	}

	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(this.name).append(", ");
		sb.append(this.email).append(", ");
		sb.append(this.loggedIn).append(", ");
		sb.append(this.customer);
		return sb.toString();
	}
}
