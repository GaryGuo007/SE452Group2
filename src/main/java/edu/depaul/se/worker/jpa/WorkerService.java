package edu.depaul.se.worker.jpa;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;

import edu.depaul.se.worker.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class WorkerService implements IWorkerService {
	private EntityManager em;

	public WorkerService() {
		em = Persistence.createEntityManagerFactory("jpa-worker").createEntityManager();
	}
	@Override
	public void saveWorker(IWorker worker) {
		EntityTransaction tx = em.getTransaction();
		
		tx.begin();
		em.persist(worker);
		tx.commit();
		
	}

}
