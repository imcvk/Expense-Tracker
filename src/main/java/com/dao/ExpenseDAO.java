package com.dao;

import com.db.HibernateConfigurations;
import com.entities.Expense;
import com.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

public class ExpenseDAO {
  SessionFactory sessionFactory = null;
  Session session = null;
  Transaction transaction = null;

  public boolean saveExpense(Expense expense) {
    boolean f = false;
    try {
      session = HibernateConfigurations.getSession();
      transaction = session.beginTransaction();
      session.persist(expense);
      transaction.commit();
      f = true;
    } catch (Exception e) {
      e.printStackTrace();
      f = false;
    }
    return f;
  }

  public boolean updateExpense(Expense e1) {
    boolean f = false;
    Expense e2 = new Expense();
    try {
      session = HibernateConfigurations.getSession();
      transaction = session.getTransaction();
      e2 = session.get(Expense.class, e1.getId());
      e2.setTitle(e1.getTitle());
      e2.setDate(e1.getDate());
      e2.setTime(e1.getTime());
      e2.setPrice(e1.getPrice());
      e2.setDescription(e1.getDescription());
      e2.setUser(e1.getUser());
      session.merge(e2);
      f = true;
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return f;
  }

  public List<Expense> getAllExpenses(User u) {
    List<Expense> expenses = new ArrayList<>();
    try {
      session = HibernateConfigurations.getSession();

      transaction = session.getTransaction();

      Query q = session.createQuery("from Expense where user=:u");
      q.setParameter("u", u);
      expenses = q.getResultList();
    } catch (Exception e) {
    }
    return expenses;
  }

  public Expense geExpense(int id) {
    Expense e = new Expense();
    try {
      session = HibernateConfigurations.getSession();
      transaction = session.getTransaction();
      e = session.get(Expense.class, id);
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return e;
  }

  public boolean deleteExpense(int id) {
    boolean f = false;
    try {
      session = HibernateConfigurations.getSession();
      transaction = session.beginTransaction();
      session.remove(session.get(Expense.class, id));
      transaction.commit();
      f = true;
    } catch (Exception ex) {
      ex.printStackTrace();
    }
    return f;
  }
}
