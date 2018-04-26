<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/4/2018
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<html>
<head>
    <title>Product List |POF</title>
</head>
<body>

<!--nav-->
<nav class="nav navbar-default" style="margin-bottom: 40px; background: black; padding-top: 25px; padding-bottom: 20px;">
    <div class="container">
        <div class="col-md-12">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                    <span class="fa fa-bars"></span>
                </button>
                <a href="<c:url value="/welcome" />#header" class="navbar-brand">POF</a>
            </div>
            <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="<c:url value="/welcome"/>">Home</a></li>
                    <li><a href="<c:url value="/welcome"/>#feature">Feature</a></li>
                    <li><a href="<c:url value="/welcome"/>#productlist">Products</a></li>
                    <li><a href="<c:url value="/welcome"/>#contact">Contact</a></li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<!--/ nav-->

<section id="productlist">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">All Our Products</h2>
                <p>Checkout All our Awesome Products</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <div class="container">
        <table class="table table-striped table-hover">
            <thead>
            <tr>
                <th>Pic</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
                <th></th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
                <tr>
                    <td><img src="#" alt="image"></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice} USD</td>
                    <td>
                        <a href="<c:url value="/viewproduct/${product.productId}"/>">
                            <span class="btn btn-warning">info</span>
                        </a>
                    </td>
                    <td>
                        <a href="<c:url value="/storeowner/store/${product.productId}"/>">
                            <span class="btn btn-primary">add to store</span>
                        </a>
                    </td>
                    <td>
                        <a href="<c:url value="/storeowner/store/${product.productId}"/>">
                            <span class="btn btn-success">add to cart</span>
                        </a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</section>

</body>
</html>
<%@include file="/WEB-INF/views/template/home_footer.jsp"%>