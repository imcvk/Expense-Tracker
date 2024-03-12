<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.dao.ExpenseDAO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.entities.Expense" %>
<%@ page import="com.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: imcvk
  Date: 3/12/2024
  Time: 1:16 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>My Expenses</title>
    <jsp:include page="/compenents/navbar.jsp"/>
    <jsp:include page="/compenents/all_css.jsp"/>
    <style type="text/css">
        .card-sh {
            box-shadow: 0 0 6px 0 rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("home.jsp");
    }
%>
<div class="container">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card">
                <div class="card-header">
                    <p class="text-center fs-3">All Expenses</p>
                    <c:if test="${not empty msg}"/>
                    <p class="text-center text-success fs-4">${msg}</p>
                    <c:remove var="msg"/>
                </div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                        <tr>
                            <th scope="col">title</th>
                            <th scope="col">date</th>
                            <th scope="col">time</th>
                            <th scope="col">description</th>
                            <th scope="col">price</th>
                            <th scope="col">user</th>
                            <th scope="col">Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <%
                            User u = (User) session.getAttribute("user");
                            ExpenseDAO expenseDAO = new ExpenseDAO();
                            List<Expense> expenses = expenseDAO.getAllExpenses(u);
                            for (Expense e : expenses) {
                        %>
                        <tr>
                            <th scope="row"><%= e.getTitle() %>
                            </th>
                            <td><%= e.getDate() %>
                            </td>
                            <td><%= e.getTime() %>
                            </td>
                            <td><%= e.getDescription()%>
                            </td>
                            <td><%= e.getPrice() %>
                            </td>
                            <td><%= e.getUser().getName() %>
                            </td>
                            <td>
                                <a href="edit_expense.jsp?id=<%=e.getId()%>" type="button"
                                   class="btn btn-sm btn-primary">Edit</a>
                                <a href="deleteExpense?id=<%=e.getId()%>" type="button" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                        <%} %>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
