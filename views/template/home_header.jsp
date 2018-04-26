<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/2/2018
  Time: 11:57 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>POFshop</title>
    <meta name="description" content="Free Bootstrap Theme by BootstrapMade.com">
    <meta name="keywords" content="free website templates, free bootstrap themes, free template, free bootstrap, free website template">
    <link href='https://fonts.googleapis.com/css?family=Lato:400,700,300|Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/font-awesome.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/animate.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/style.css"/>">
</head>

<body>
<!--header-->
<header class="main-header" id="header">
    <div class="bg-color">
        <!--nav-->
        <nav class="nav navbar-default navbar-fixed-top">
            <div class="container">
                <div class="col-md-12">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#mynavbar" aria-expanded="false" aria-controls="navbar">
                            <span class="fa fa-bars"></span>
                        </button>
                        <a href="#header" class="navbar-brand">POF</a>
                    </div>
                    <div class="collapse navbar-collapse navbar-right" id="mynavbar">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#header">Home</a></li>
                            <li><a href="#feature">Feature</a></li>
                            <li><a href="#product">Products</a></li>
                            <li><a href="#contact">Contact</a></li>
                            <li><a href="<c:url value="/login"/>">Log in</a></li>
                            <li><a href="<c:url value="/signup"/>" style="border-radius: 4px; border: 1px solid yellow;">Get Started</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
        <!--/ nav-->
        <div class="container text-center">
            <div class="wrapper wow fadeInUp delay-05s">
                <h2 class="top-title">Exploring & shopping</h2>
                <h3 class="title">POF</h3>
                <h4 class="sub-title">We Provide amazing Products</h4>
                <a href="<c:url value="/signup"/>" class="btn btn-submit" style="border-radius: 4px;">Get Started</a>
            </div>
        </div>
    </div>
</header>
<!--/ header-->
<!--
<audio src="<c:url value="/resources/music/Holly Henry - Seven Nation Army.mp3"/>" autoplay>
    <embed src="<c:url value="/resources/music/Holly Henry - Seven Nation Army.mp3"/>" width="180" height="90" hidden="true" />
</audio>
-->
