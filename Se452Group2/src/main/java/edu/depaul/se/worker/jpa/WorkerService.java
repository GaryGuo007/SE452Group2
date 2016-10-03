package edu.depaul.se.worker.jpa;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;

import edu.depaul.se.customer.ICustomer;
import edu.depaul.se.customer.jpa.Customer;
import edu.depaul.se.worker.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

public class WorkerService implements IWorkerService {
	private EntityManager em;

	public WorkerService() {
		em = Persistence.createEntityManagerFactory("jpa-mongodb").createEntityManager();
	}
	@Override
	public void saveWorker(IWorker worker) {
		EntityTransaction tx = em.getTransaction();
		
		tx.begin();
		em.persist(worker);
		tx.commit();
		
	}
	
	@Override
	public IWorker getWorker(String name) {
		TypedQuery<Worker> q = em.createQuery("select c from Worker c where c.name = :name", Worker.class);
		List<Worker> w1 = q.setParameter("name", name).getResultList();
		Worker w = w1.get(0);
		String wID= w.getId();
		IWorker W = em.find(Worker.class, wID);
		return W;
		
		//return getCustomer(1L);
	}


}
