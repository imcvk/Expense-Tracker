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

@WebServlet(name = "userLogin", value = "/userLogin")
public class LoginServlet extends HttpServlet {
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    HttpSession httpSession = req.getSession();
    String email = req.getParameter("email");
    String password = req.getParameter("password");
    UserDAO dao = new UserDAO();
    User user = dao.loginUser(email, password);
    System.out.println(user);

    if (user != null) {
      httpSession.setAttribute("user", user);
      resp.sendRedirect("home.jsp");
    } else {
      httpSession.setAttribute("msg", "User login failed");
      resp.sendRedirect("login.jsp");
    }
  }
}