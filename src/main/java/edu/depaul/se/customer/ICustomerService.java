package edu.depaul.se.customer;

public interface ICustomerService {

	public void saveCustomer(ICustomer cust);
	public ICustomer getCustomer(String name);
	public ICustomer getCustomer(Long id);
}
