package com.servlets;

import com.dao.ExpenseDAO;
import com.entities.Expense;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/deleteExpense")
public class deleteExpense extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    int id = Integer.parseInt(req.getParameter("id"));
    ExpenseDAO expenseDAO = new ExpenseDAO();
    HttpSession httpSession = req.getSession();
    boolean f = expenseDAO.deleteExpense(id);
    if (f) {
      httpSession.setAttribute("msg", "Expense removed");
    } else {
      httpSession.setAttribute("msg", "Expense not removed");
    }
    resp.sendRedirect("view_expenses.jsp");
  }
}
