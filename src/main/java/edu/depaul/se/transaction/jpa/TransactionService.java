package edu.depaul.se.transaction.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import edu.depaul.se.customer.Customer;
import edu.depaul.se.customer.ICustomer;
import edu.depaul.se.transaction.ITransaction;
import edu.depaul.se.transaction.ITransactionService;

public class TransactionService implements ITransactionService {

	private EntityManager em;

	public TransactionService() {
		em = Persistence.createEntityManagerFactory("jpa-mongodb").createEntityManager();
	}

	@Override
	public void saveTransaction(ITransaction trans) {
		EntityTransaction tx = em.getTransaction();

		tx.begin();
		em.persist(trans);
		tx.commit();
	}

	@Override
	public List<Transaction> getTransaction(String id) {

		TypedQuery<Transaction> q = em.createQuery("select t from Transaction t where t.workerID = :workerID",
				Transaction.class);
		List<Transaction> t1 = q.setParameter("workerID", id).getResultList();
		if (t1.isEmpty())
			return null;
		else {
			return t1;
		}

	}

}
