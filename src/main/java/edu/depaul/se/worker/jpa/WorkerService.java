package edu.depaul.se.worker.jpa;

import edu.depaul.se.customer.Customer;
import edu.depaul.se.customer.ICustomer;
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
		String wID = w.getId();
		IWorker W = em.find(Worker.class, wID);
		return W;
	}

	@Override
	public IWorker getWorkerById(String id) {
		TypedQuery<Worker> q = em.createQuery("select c from Worker c where c.id = :id", Worker.class);
		List<Worker> w1 = q.setParameter("id", id).getResultList();
		Worker w = w1.get(0);
		String wID = w.getId();
		IWorker W = em.find(Worker.class, wID);
		return W;
	}

	@Override
	public List<Worker> getWorkerByProfession(String skill) {
		TypedQuery<Worker> q = em.createQuery("select w from Worker w where w.skill = :skill", Worker.class);
		List<Worker> w1 = q.setParameter("skill", skill).getResultList();
		if (w1.isEmpty())
			return null;

		return w1;
	}

	public void close() {
		em.close();
	}

}
