<%--
  Created by IntelliJ IDEA.
  User: imcvk
  Date: 3/12/2024
  Time: 9:31 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>User Homepage</title>

</head>
<body>
<jsp:include page="/compenents/navbar.jsp"/>
<jsp:include page="/compenents/all_css.jsp"/>
<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="${pageContext.request.contextPath}/img/p1.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/img/p2.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
        <div class="carousel-item">
            <img src="${pageContext.request.contextPath}/img/p3.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>
</div>

</body>
</html>
