package dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;

import dto.customer;

public class CustomerDao {

	EntityManagerFactory entityManagerFactory=Persistence.createEntityManagerFactory("dev");
	EntityManager entityManager=entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction=entityManager.getTransaction();
	
	public List<customer>check(String email){
		return entityManager.createQuery("select x from customer x where email=?1").setParameter(1, email).getResultList(); 
	}
	public List<customer>check(long mobile){
		return entityManager.createQuery("select x from customer x where mobile=?1").setParameter(1, mobile).getResultList(); 
	}
	
	public void save(customer customer) {
		entityTransaction.begin();
		entityManager.persist(customer);
		entityTransaction.commit();
	}
	public customer login(int userid) {
		
		return entityManager.find(customer.class, userid);
	}
	public void update(customer customer) {
		entityTransaction.begin();
		entityManager.merge(customer);
		entityTransaction.commit();
	}
	
}
