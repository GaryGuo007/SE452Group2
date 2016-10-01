package edu.depaul.se.worker.test;

import org.bson.Document;

import com.mongodb.MongoClient;
import com.mongodb.client.MongoCollection;

import edu.depaul.se.worker.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

public class WorkerService implements IWorkerService {
	//private static final MongoClient c = new MongoClient();
	//private static final MongoCollection<Document> DB = c.getDatabase("se452").getCollection("workers");
	private EntityManager em;

	public WorkerService() {
		em = Persistence.createEntityManagerFactory("jpa-worker").createEntityManager();
	}
	@Override
	public void saveWorker(iWorker worker) {
		EntityTransaction tx = em.getTransaction();
		
		tx.begin();
		em.persist(worker);
		tx.commit();
		
	}
	
//	@Override
//	public void saveWorker(iWorker worker) {
//		DB.insertOne(new Document().append("name", "frd"));
//	}

}
