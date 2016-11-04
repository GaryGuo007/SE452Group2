package edu.depaul.se.transaction.jpa;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.annotations.GenericGenerator;

import edu.depaul.se.transaction.ITransaction;

@Entity
public class Transaction implements ITransaction, Serializable {

	@Id
	@GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
	private String id;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	// Worker ID
	private String workerID;

	public void setWorkerID(String workerID) {
		this.workerID = workerID;
	}

	public String getWorkerID() {
		return this.workerID;
	}

	// Customer ID
	private String customerID;

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	private String custFirst;
	private String custLast;

	// Notes
	private String notes;

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getNotes() {
		return this.notes;
	}

	public Transaction() {

	}

	public Transaction(String workerID, String customerID, String custFirst, String custLast, String notes) {
		this.workerID = workerID;
		this.customerID = customerID;
		this.custFirst = custFirst;
		this.custLast = custLast;
		this.notes = notes;

	}

	public String getCustFirst() {
		return custFirst;
	}

	public void setCustFirst(String custFirst) {
		this.custFirst = custFirst;
	}

	public String getCustLast() {
		return custLast;
	}

	public void setCustLast(String custLast) {
		this.custLast = custLast;
	}
}
