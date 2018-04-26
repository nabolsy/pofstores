<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/12/2018
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<body>

<!--nav-->
<nav class="nav navbar-default" style="margin-bottom: 40px; background: black; padding-top: 25px; padding-bottom: 20px;">
    <div class="container">
        <div class="col-md-12">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                    <span class="fa fa-bars"></span>
                </button>
                <a href="<c:url value="/" />#header" class="navbar-brand">POF</a>
            </div>
            <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<c:url value="/"/>">Home</a></li>
                    <li><a href="<c:url value="/"/>#feature">Feature</a></li>
                    <li><a href="<c:url value="/"/>#product">Products</a></li>
                    <li><a href="<c:url value="/"/>#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<!--/ nav-->

<!--View Product-->
<section id="viewproduct">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="">Thanks.</h2>
                <p>For being one of our community</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
</body>
