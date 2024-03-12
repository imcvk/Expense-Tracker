package com.servlets;

import com.dao.ExpenseDAO;
import com.entities.Expense;
import com.entities.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/expense")
public class ExpenseServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String title = req.getParameter("title");
    String date = req.getParameter("date");
    String time = req.getParameter("time");
    String description = req.getParameter("description");
    String price = req.getParameter("price");
    HttpSession httpSession = req.getSession();
    User user = (User) httpSession.getAttribute("user");
    Expense e = new Expense(title, date, time, description, price, user);
    System.out.println(e);
    ExpenseDAO expenseDAO = new ExpenseDAO();
    boolean f = expenseDAO.saveExpense(e);
    if (f) {
      httpSession.setAttribute("msg", "Expense saved");
    } else {
      httpSession.setAttribute("msg", "Expense not saved try again");
    }
    resp.sendRedirect("add_expense.jsp");
  }
}
