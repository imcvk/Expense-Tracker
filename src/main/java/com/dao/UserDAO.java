package com.dao;

import com.db.HibernateConfigurations;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

public class UserDAO {
  SessionFactory sessionFactory = null;
  Session session = null;
  Transaction transaction = null;

  public boolean saveUser(Object user) {
    boolean f = false;
    try {
      session = HibernateConfigurations.getSession();
      transaction = session.beginTransaction();
      session.persist(user);
      transaction.commit();
      f = true;
    } catch (Exception e) {
      e.printStackTrace();
      f = false;
    }
    return f;
  }

  public User loginUser(String email, String password) {
    User user = null;
    session = HibernateConfigurations.getSession();
    Query q = session.createQuery("from User where emailId=:em and password=:ps");
    q.setParameter("em", email);
    q.setParameter("ps", password);
    user = (User) q.uniqueResult();
    return user;
  }
}
