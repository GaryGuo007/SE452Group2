package edu.depaul.se.customer;

public interface ICustomerService {

	public void saveCustomer(ICustomer cust);
	public void updateCustomer(ICustomer cust);
	public ICustomer getCustomerByEmail(String email);
	public ICustomer getCustomerInfo(String id);
}
