<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/2/2018
  Time: 10:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Sign in |POF</title>
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
                    <h4 style="color: #1e7e34;">Please Sign in!</h4>
                </div>

                <form:form action="${pageContext.request.contextPath}/login" method="post" commandName="user">

                    <div class="form-group">
                        <label for="uname">User Name</label> <span style="color: red;">${notFoundMsg}</span><form:errors path="userName" cssStyle="color: red;" />
                        <form:input path="userName" id="uname" cssClass="form-control" />
                    </div>


                    <div class="form-group">
                        <label for="pass">Password</label>
                        <form:password path="password" id="pass" cssClass="form-control" />
                    </div>
                    <div class="checkbox">
                        <label>
                            <input type="checkbox"> Agree the terms and policy
                        </label>
                    </div>
                    <button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30" href="<c:url value="/welcome"/>">Log In</button>
                </form:form>

                <div class="btn btn-danger btn-flat m-b-30 m-t-30">
                    <a href="<c:url value="/storeowner-login" />" style="color: #fff;"> Or Login As Store Owner</a>
                </div>

                <div class="register-link m-t-15 text-center">
                    <p>Or Register from here ? <a href="<c:url value="/signup"/>"> Register</a></p>
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
