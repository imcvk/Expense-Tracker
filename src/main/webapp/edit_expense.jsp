<%@ page import="com.entities.Expense" %>
<%@ page import="com.dao.ExpenseDAO" %><%--
  Created by IntelliJ IDEA.
  User: imcvk
  Date: 3/12/2024
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add expense</title>
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
<%
    ExpenseDAO expenseDAO = new ExpenseDAO();
    Expense e = expenseDAO.geExpense(Integer.parseInt(request.getParameter("id")));
%>
<div class="container" p-4>
    <div class="row">
        <div class="col-md-6 offset-md-3 card-sh">
            <div class="card">
                <div class="card-header">
                    <p class="text-center fs-3">Edit expense</p>
                </div>
                <div class="card-body">
                    <form action="updateExpense" method="post">
                        <div class="mb-3" hidden>
                            <label for="Id" class="form-label">Title</label>
                            <input type="text" class="form-control" id="id" name="id"
                                   value="<%=e.getId()%>" />
                        </div>
                        <div class="mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="title"
                                   value="<%=e.getTitle()%>" />
                        </div>
                        <div class="mb-3">
                            <label for="date" class="form-label">Date</label>
                            <input type="date" class="form-control" id="date" name="date" value="<%=e.getDate()%>" />
                        </div>

                         <div class=" mb-3">
                            <label for="time" class="form-label">Time</label>
                            <input type="time" class="form-control" id="time" name="time"
                                   placeholder="time" value="<%=e.getTime()%>" />
                        </div>
                        <div class=" mb-3">
                            <label for="description" class="form-label">Description</label>
                            <input type="text" class="form-control" id="description" name="description"
                                   placeholder="description" value="<%=e.getDescription()%>" />
                        </div>

                     <div class=" mb-3">
                            <label for="price" class="form-label">Price</label>
                            <input type="text" class="form-control" id="price" name="price" placeholder="price"
                                   value="<%=e.getPrice()%>" />
                        </div>

                        <div>
                            <button class=" btn btn-success col-md-12" type="submit">Update</button>
                            <%--                            <button class="btn primary col-md-12" type="reset">Reset</button>--%>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
