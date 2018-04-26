<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/5/2018
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/admin_left_panel.jsp"%>

<div id="right-panel" class="right-panel">
    <!-- Header-->
    <header id="header" class="header">

        <div class="header-menu">

            <div class="col-sm-7">
                <a id="menuToggle" class="menutoggle pull-left"><i class="fa fa fa-tasks"></i></a>
                <div class="header-left">
                    <button class="search-trigger"><i class="fa fa-search"></i></button>
                    <div class="form-inline">
                        <form class="search-form">
                            <input class="form-control mr-sm-2" type="text" placeholder="Search ..." aria-label="Search">
                            <button class="search-close" type="submit"><i class="fa fa-close"></i></button>
                        </form>
                    </div>

                    <div class="dropdown for-notification">
                        <button class="btn btn-secondary dropdown-toggle" type="button" id="notification" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-bell"></i>
                            <span class="count bg-danger">5</span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="notification">
                            <p class="red">You have 3 Notification</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <i class="fa fa-check"></i>
                                <p>Server #1 overloaded.</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <i class="fa fa-info"></i>
                                <p>Server #2 overloaded.</p>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <i class="fa fa-warning"></i>
                                <p>Server #3 overloaded.</p>
                            </a>
                        </div>
                    </div>

                    <div class="dropdown for-message">
                        <button class="btn btn-secondary dropdown-toggle" type="button"
                                id="message"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="ti-email"></i>
                            <span class="count bg-primary">9</span>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="message">
                            <p class="red">You have 4 Mails</p>
                            <a class="dropdown-item media bg-flat-color-1" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<c:url value="/resources/images/avatar/1.jpg"/>"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jonathan Smith</span>
                                    <span class="time float-right">Just now</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-4" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<c:url value="/resources/images/avatar/2.jpg"/>"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Jack Sanders</span>
                                    <span class="time float-right">5 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-5" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<c:url value="/resources/images/avatar/3.jpg"/>"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Cheryl Wheeler</span>
                                    <span class="time float-right">10 minutes ago</span>
                                        <p>Hello, this is an example msg</p>
                                </span>
                            </a>
                            <a class="dropdown-item media bg-flat-color-3" href="#">
                                <span class="photo media-left"><img alt="avatar" src="<c:url value="/resources/images/avatar/4.jpg"/>"></span>
                                <span class="message media-body">
                                    <span class="name float-left">Rachel Santos</span>
                                    <span class="time float-right">15 minutes ago</span>
                                        <p>Lorem ipsum dolor sit amet, consectetur</p>
                                </span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-sm-5">
                <div class="user-area dropdown float-right">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <img class="user-avatar rounded-circle" src="<c:url value="/resources/images/admin.jpg"/>" alt="User Avatar">
                    </a>

                    <div class="user-menu dropdown-menu">
                        <a class="nav-link" href="#"><i class="fa fa- user"></i>My Profile</a>

                        <a class="nav-link" href="#"><i class="fa fa- user"></i>Notifications <span class="count">13</span></a>

                        <a class="nav-link" href="#"><i class="fa fa -cog"></i>Settings</a>

                        <a class="nav-link" href="#"><i class="fa fa-power -off"></i>Logout</a>
                    </div>
                </div>

                <div class="language-select dropdown" id="language-select">
                    <a class="dropdown-toggle" href="#" data-toggle="dropdown"  id="language" aria-haspopup="true" aria-expanded="true">
                        <i class="flag-icon flag-icon-us"></i>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="language" >
                        <div class="dropdown-item">
                            <span class="flag-icon flag-icon-fr"></span>
                        </div>
                        <div class="dropdown-item">
                            <i class="flag-icon flag-icon-es"></i>
                        </div>
                        <div class="dropdown-item">
                            <i class="flag-icon flag-icon-us"></i>
                        </div>
                        <div class="dropdown-item">
                            <i class="flag-icon flag-icon-it"></i>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </header><!-- /header -->
    <!--/Header-->
    <section id="addproduct">
        <div class="container row">
            <div class="col-lg-12 text-center">
                <h2 class="section-heading">Add Product Page</h2>
                <p>Please fill out the below info. to add product!</p>
                <hr class="my-4">
            </div>
        </div>
        <div class="row">
            <div class="container col-md-6 col-md-offset-3">
                <form:form action="${pageContext.request.contextPath}/admin/productInventory/addProduct" method="post" commandName="product">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <form:input path="productName" id="name" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label for="manufacturer">Brand</label>
                        <form:input path="productManufacturer" id="manufacturer" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label for="category">Category</label><br>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productCategory" id="category" value="mobiles"/> mobiles
                        </label>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productCategory" id="category" value="cameras"/> cameras
                        </label>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productCategory" id="category" value="laptops"/> laptops
                        </label>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productCategory" id="category" value="PCs"/> PCs
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="description">Description</label>
                        <form:textarea path="productDescription" id="description" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label for="price">Price</label>
                        <form:input path="productPrice" id="price" cssClass="form-control"/>
                    </div>

                    <div class="form-group">
                        <label for="status">Status</label><br>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productStatus" id="status" value="new"/> New
                        </label>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productStatus" id="status" value="used"/> Used
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="condition">Condition</label><br>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productCondition" id="condition" value="active"/> Active
                        </label>
                        <label class="checkbox-inline">
                            <form:radiobutton path="productCondition" id="condition" value="inactive"/> Inactive
                        </label>
                    </div>

                    <div class="form-group">
                        <label for="quantity">Quantity</label>
                        <form:input path="unitInStock" id="quantity" cssClass="form-control"/>
                    </div><br>


                    <div class="col-lg-8 col-lg-offset-2 text-center">
                        <input type="submit" value="submit" class="btn btn-success"/>
                        <a href="<c:url value="/admin/productInventory"/>" class="btn btn-danger">Cancel</a>
                    </div>
                </form:form>
            </div>
        </div>
        <br>
    </section>
</div>
<%@include file="/WEB-INF/views/template/footer_panel.jsp"%>