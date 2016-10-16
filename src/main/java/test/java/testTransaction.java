package test.java;

import edu.depaul.se.transaction.jpa.*;

public class testTransaction {
	public static void main(String[] args) {
		TransactionService service = new TransactionService();
		service.saveTransaction(new Transaction("workerID1","customerID1",599.99,85,"It was great, but he was late twice"));
		service.saveTransaction(new Transaction("workerID2","customerID2",399.99,99,"Amazing!"));
	}

}
