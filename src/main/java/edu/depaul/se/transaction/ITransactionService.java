package edu.depaul.se.transaction;

import edu.depaul.se.customer.ICustomer;

public interface ITransactionService {

	void saveTransaction(ITransaction trans);
	public ITransaction getTransaction(String name);
}
