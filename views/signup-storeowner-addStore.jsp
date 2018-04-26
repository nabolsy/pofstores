<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/19/2018
  Time: 6:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Add Store |POF</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="<c:url value="/resources/assets/css/normalize.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/font-awesome.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/themify-icons.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/flag-icon.min.css"/>">
    <link rel="stylesheet" href="<c:url value="/resources/assets/css/cs-skin-elastic.css"/>">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="<c:url value="/resources/assets/scss/style.css"/>">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>

<body class="bg-dark">
<div class="sufee-login d-flex align-content-center flex-wrap">
    <div class="container">
        <div class="login-content">
            <div class="login-form">
                <div class="text-center">
                    <h1 style="color: #FFF;"><a href="<c:url value="/"/>">POF</a></h1>
                    <h4 style="color: #007ee5">Add Store</h4>
                </div>
                <form:form action="${pageContext.request.contextPath}/signup-storeowner-addStore" method="post" commandName="store">

                    <div class="form-group">
                        <label for="storeName">Store Name</label> <span style="color: red;">${SNAMEMsg}</span><form:errors path="storeName" cssStyle="color: red;" />
                        <form:input path="storeName" id="storeName" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="storeLocation">Location</label>
                        <form:input path="storeLocation" id="storeLocation" cssClass="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="storeType">Store Type</label>
                        <form:input path="storeType" id="storeType" cssClass="form-control" />
                    </div>

                    <button type="submit" class="btn btn-primary btn-flat m-b-30 m-t-30" href="<c:url value="/greeting"/>">Go On</button>

                </form:form>
                <div class="btn btn-info btn-flat m-b-30 m-t-30">
                    <a href="<c:url value="/signup-storeowner"/>" style="color: #fff;"> back Step <-</a>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="<c:url value="/resources/assets/js/vendor/jquery-2.1.4.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/popper.min.js"/>"></script>
<script src="<c:url value="/resources/assets/js/plugins.js"/>"></script>
<script src="<c:url value="/resources/assets/js/main.js"/>"></script>


</body>
</html>