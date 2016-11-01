package edu.depaul.se.transaction;

import java.util.List;

import edu.depaul.se.customer.ICustomer;
import edu.depaul.se.transaction.jpa.Transaction;

public interface ITransactionService {

	void saveTransaction(ITransaction trans);
	public List<Transaction> getTransaction(String name);
}
