package com.T4a.ClothesOnSearch.Dao;

import javax.persistence.TypedQuery;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.Users;

@Repository
@Transactional
public class AdminDaoImpl implements AdminDao {

	@Autowired
	SessionFactory sessionFactory;

	@Override
	public Users userLogin(String email_id, String password) {
		Users user = null;
		try {
			System.out.println(email_id + " impl" + password);
			TypedQuery<Users> query = sessionFactory.getCurrentSession()
					.createQuery("from Users where userEmail=:userEmail and userPassword=:userPassword", Users.class);
			query.setParameter("userEmail", email_id);
			query.setParameter("userPassword", password);
			user = query.getSingleResult();
		} catch (HibernateException ex) {
			ex.printStackTrace();
			throw new HibernateException(ex);
		}
		return user;

	}

	@Override
	public CustomerDetails customerLogin(String customerEmail, String customerPassword) {
		CustomerDetails customerdetails = null;
		try {
			System.out.println(customerEmail + " impl" + customerPassword);
			TypedQuery<CustomerDetails> query = sessionFactory.getCurrentSession().createQuery(
					"from CustomerDetails where customerEmail=:customerEmail and customerPassword=:customerPassword ",
					CustomerDetails.class);
			query.setParameter("customerEmail", customerEmail);
			query.setParameter("customerPassword", customerPassword);
			customerdetails = query.getSingleResult();
		} catch (HibernateException ex) {
			ex.printStackTrace();
		}
		return customerdetails;
	}

}
