package edu.depaul.se.customer.jpa;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;

import edu.depaul.se.customer.Customer;
import edu.depaul.se.customer.ICustomer;
import edu.depaul.se.customer.ICustomerService;

public class CustomerService implements ICustomerService {

	private EntityManager em;
	
	public CustomerService() {
		em = Persistence.createEntityManagerFactory("jpa-mongodb").createEntityManager();
	}

	@Override
	public void saveCustomer(ICustomer cust) {
		EntityTransaction tx = em.getTransaction();

		tx.begin();
		System.out.println("going to create cust " + cust.toString());
		em.persist(cust);
		tx.commit();
	}
	
	@Override
	public void updateCustomer(ICustomer cust) {
		EntityTransaction tx = em.getTransaction();

		tx.begin();
		System.out.println("going to merge cust " + cust.toString());
		em.merge(cust);
		tx.commit();
	}

	@Override
	public ICustomer getCustomerByEmail(String email) {
		TypedQuery<Customer> q = em.createQuery("select c from Customer c where c.email = :email", Customer.class);
		List<Customer> c1 = q.setParameter("email", email).getResultList();
		if ( c1.isEmpty() )
			return null;
		Customer c = c1.get(0);
		String cID= c.getId();
		System.out.println("DEBUG: cID is " + cID);
		ICustomer C = em.find(Customer.class, cID);
		System.out.println("DEBUG: cust is " + C.toString());
		return C;
	}

	@Override
	public ICustomer getCustomerInfo(String id) {
		return em.find(Customer.class, id);
	}
	
	public String getName(ICustomer c){
		return c.toString();
	}
	
	public void close() {
		em.close();
	}	
	
}
