<%--
  Created by IntelliJ IDEA.
  User: imcvk
  Date: 3/11/2024
  Time: 9:10 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Register</title>
    <jsp:include page="compenents/navbar.jsp"/>
    <jsp:include page="compenents/all_css.jsp"/>
</head>
<body>
<div class="container" p-4>
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header">
                    <p class="text-center fs-3">Login</p>
                    <c:if test="${not empty msg}"/>
                    <p class="text-center text-failure fs-4">${msg}</p>
                    <c:remove var="msg"/>
                </div>
                <div class="card-body">
                    <form action="userLogin" method="post">
                        <div class="mb-3">
                            <label for="email" class="form-label">Email address</label>
                            <input type="email" class="form-control" id="email" name="email" placeholder="name@example.com">
                        </div>

                        <div class="mb-3">
                            <label for="password" class="form-label">Password</label>
                            <input type="password" class="form-control" id="password" name="password" placeholder="password">
                        </div>
                        <div>
                            <button class="btn btn-success col-md-12" type="submit">Login</button>
                            <%--                            <button class="btn primary col-md-12" type="reset">Reset</button>--%>
                            <label>Dont have account? <a href="register.jsp">click here</a></label>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>
