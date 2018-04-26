<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/2/2018
  Time: 11:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/WEB-INF/views/template/header.jsp"%>
<body>
<!--View Product-->
<section id="viewproduct">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">View Product |POF</h2>
                <p>Product Details!</p>
                <hr class="my-4">
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-5">
                <img src="#" alt="image" style="width: 100%; height: 300px">
            </div>
            <div class="col-md-5">
                <h3> Product name: ${product.productName}</h3>
                <p>Product Description: ${product.productDescription}</p>
                <p>Manufacturer: ${product.productManufacturer}</p>
                <p>Category: ${product.productCategory}</p>
                <p>Price: <strong>${product.productPrice} USD</strong></p>
            </div>
        </div>
    </div>
</section>
</body>
<%@include file="/WEB-INF/views/template/home_footer.jsp"%>
