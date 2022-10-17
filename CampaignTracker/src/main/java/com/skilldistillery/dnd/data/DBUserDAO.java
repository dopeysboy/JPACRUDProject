package com.skilldistillery.dnd.data;

import javax.persistence.Embeddable;
import javax.persistence.EntityExistsException;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.dnd.entities.User;

@Service
@Transactional
public class DBUserDAO implements UserDAO{

	@PersistenceContext
	private EntityManager em;

	@Override
	public User getUserByUsrNamePass(String username, String password) {
		String query = "SELECT usr FROM User usr WHERE usr.username = :username AND usr.password = :password";
		
		User usr = em.createQuery(query, User.class).setParameter("username", username).setParameter("password", password.hashCode())
				.getSingleResult();		
		
		return usr;
	}

	@Override
	public User createUser(String username, String password) {
		User usr = new User(username, password);
		try {
			em.persist(usr);
			em.flush();
			return usr;
		}catch(Exception e) {
			return null;
		}
	}

	@Override
	public boolean destroyUser(int id) {
		User user = em.find(User.class, id);
		
		em.remove(user);
		
		return !em.contains(user);
	}

	@Override
	public User updatePassword(User user, String password) {
		User updated = em.find(User.class, user.getId());
		updated.setPassword(password);
		em.flush();
		return updated;
	}

}
