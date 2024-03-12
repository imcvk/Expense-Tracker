<%@ page import="org.hibernate.SessionFactory" %>
<%@ page import="com.db.HibernateConfigurations" %>
<%@ page import="java.io.PrintWriter" %>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Online Expense tracker</title>
    <jsp:include page="compenents/navbar.jsp"/>
    <jsp:include page="compenents/all_css.jsp"/>
</head>
<body>

<div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="img/p1.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
        <div class="carousel-item">
            <img src="img/p2.jpg" class="d-block w-100" alt="..." height="650px">
        </div>
        <div class="carousel-item">
            <img src="img/p3.jpg" class="d-block w-100" alt="..." height="650px">
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