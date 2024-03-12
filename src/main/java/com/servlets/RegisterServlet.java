package com.servlets;

import com.dao.UserDAO;
import com.entities.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "userRegister", value = "/userRegister")
public class RegisterServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    HttpSession httpSession = req.getSession();
    String name = req.getParameter("name");
    String email = req.getParameter("email");
    String password = req.getParameter("password");
    String confirm_password = req.getParameter("ConfirmPassword");
    User u = new User(name, email, password);
    System.out.println(u);
    UserDAO userDAO = new UserDAO();
    boolean f = userDAO.saveUser(u);

    if (f) {
      httpSession.setAttribute("msg", "User Registered");
    } else {
      httpSession.setAttribute("msg", "failed");
      System.out.println("Registration failed");
    }
    resp.sendRedirect("register.jsp");
  }
}
