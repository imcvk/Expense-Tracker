<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.entities.User" %>
<%--
  Created by IntelliJ IDEA.
  User: imcvk
  Date: 3/11/2024
  Time: 9:11 PM
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
<body>
<%
    if (session.getAttribute("user") == null) {
        response.sendRedirect("../login.jsp");
    }
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-success">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">
            <i class="fa-solid fa-money-check"></i>
            Expense tracker</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home.jsp">
                        <i class="fa-solid fa-house-user"></i> Home</a>
                </li>
                <%
                    if (session.getAttribute("user") != null) {
                %>
                <li class="nav-item">
                    <a class="nav-link active" href="add_expense.jsp">
                        <i class="fa-solid fa-plus"></i>Add expense </label>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="view_expenses.jsp">
                        <i class="fa-solid fa-list"></i> View Expense</a>
                </li>
                <%}%>
            </ul>
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <%
                    if (session.getAttribute("user") != null) {
                %>
                <%--                <c:if test="${not empty user}">--%>
                <li class="nav-item">
                    <a class="nav-link active" href="home.jsp">
                        <i class="fa-solid fa-user"></i>
                        ${user.name} </label>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="logout">
                        <i class="fa-solid fa-right-to-bracket"></i> Logout</a>
                </li>
                <%}%>
                <%
                    if (session.getAttribute("user") == null) {
                %>
                <%--                </c:if>--%>
                <%--                <c:if test="${empty user}">--%>
                <li class="nav-item">
                    <a class="nav-link active" href="login.jsp">
                        <i class="fa-solid fa-right-to-bracket"></i> Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" href="register.jsp">
                        <i class="fa-solid fa-user-plus"></i> Register</a>
                </li>
                <%}%>
                <%--                </c:if>--%>
            </ul>
        </div>
    </div>
</nav>
</body>
</html>
