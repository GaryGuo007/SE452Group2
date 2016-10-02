package edu.depaul.se.transaction.jpa;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import edu.depaul.se.transaction.ITransaction;
import edu.depaul.se.transaction.ITransactionService;

public class TransactionService implements ITransactionService {

	private EntityManager em;
	
	public TransactionService() {
		em = Persistence.createEntityManagerFactory("jpa-mongodb").createEntityManager();
	}
	
	@Override
	public void SaveTransaction(ITransaction trans) {
		EntityTransaction tx = em.getTransaction();

		tx.begin();
		em.persist(trans);
		tx.commit();		
	}

}
