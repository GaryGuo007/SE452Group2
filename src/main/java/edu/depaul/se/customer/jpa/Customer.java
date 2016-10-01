package edu.depaul.se.customer.jpa;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQuery;

import edu.depaul.se.customer.ICustomer;

@Entity
@NamedQuery(name = "findCustomer", query = "select name from Customer")
public class Customer implements ICustomer, Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	private String name;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Customer() {
		
	}
	public Customer(String name) {
		this.name = name;
	}
}
