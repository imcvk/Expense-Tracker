<%--
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
<div class="container" p-4>
    <div class="row">
        <div class="col-md-6 offset-md-3 card-sh">
            <div class="card">
                <div class="card-header">
                    <p class="text-center fs-3">Add expense</p>
                    <c:if test="${not empty msg}"/>
                    <p class="text-center text-success fs-4">${msg}</p>
                    <c:remove var="msg"/>
                </div>
                <div class="card-body">
                    <form action="expense" method="post">
                        <div class="mb-3">
                            <label for="title" class="form-label">Title</label>
                            <input type="text" class="form-control" id="title" name="title" placeholder="title">
                        </div>
                        <div class="mb-3">
                            <div class="col">
                                <label for="date" class="form-label">Date</label>
                                <input type="date" class="form-control" id="date" name="date">
                            </div>
                            <div class="col">
                                <label for="time" class="form-label">Time</label>
                                <input type="time" class="form-control" id="time" name="time"
                                       placeholder="time">
                            </div>
                        </div>

                        <%--                        <div class="mb-3">--%>
                        <%--                            <label for="time" class="form-label">Time</label>--%>
                        <%--                            <input type="time" class="form-control" id="time" name="time"--%>
                        <%--                                   placeholder="time">--%>
                        <%--                        </div>--%>
                        <div class="mb-3">
                            <label for="description" class="form-label">Description</label>
                            <input type="text" class="form-control" id="description" name="description"
                                   placeholder="description">
                        </div>

                        <div class="mb-3">
                            <label for="price" class="form-label">Price</label>
                            <input type="text" class="form-control" id="price" name="price" placeholder="price">
                        </div>

                        <div>
                            <button class="btn btn-success col-md-12" type="submit">Add</button>
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
