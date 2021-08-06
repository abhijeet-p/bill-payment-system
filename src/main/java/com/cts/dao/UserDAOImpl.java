package com.cts.dao;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Repository;

import com.cts.entity.User;
import com.cts.entity.UserRole;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
@Autowired
private SessionFactory sessionFactory;

@Autowired
private PasswordEncoder passwordEncoder;



	@Override
	public List<User> listAllUsers(){
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<User> cq=cb.createQuery(User.class);
		Root<User> root =cq.from(User.class);
		cq.select(root);
		Query query =session.createQuery(cq);
		return query.getResultList();
	}


	@Override
	public void saveUser(User user) {	
	user.setPassword(passwordEncoder.encode(user.getPassword()));
	
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		
	
	
	}




	@Override
	public User getUser(String username) {
		Session session=sessionFactory.getCurrentSession();
		User theUser =session.get(User.class,username);
		return theUser;
	}



	@Override
	public void deleteUser(String username) {
		Session session=sessionFactory.getCurrentSession();
		User user =session.byId(User.class).load(username);
		
		session.delete(user);
		
	}
	
	@SuppressWarnings("unchecked")
	public User findByUserName(String username) {

		List<User> users = new ArrayList<User>();
		users = sessionFactory.getCurrentSession()
			.createQuery("from User where username=?")
			.setParameter(0, username)
			.list();

		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}

	}


	@Override
	public void saveUserRole(UserRole theUserRole) {
		sessionFactory.getCurrentSession().saveOrUpdate(theUserRole);
		
	}
}
