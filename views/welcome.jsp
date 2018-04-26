<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/14/2018
  Time: 1:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/WEB-INF/views/template/welcome_header.jsp"%>

<!---->
<section id="cta-1">
    <div class="container">
        <div class="row">
            <div class="cta-info text-center">
                <h3><span class="dec-tec">Everything is designed. Few things are designed well. -Brian Reed</h3>
            </div>
        </div>
    </div>
</section>
<!---->
<!---->
<section id="welcome_feature" class="section-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-3 wow fadeInLeft delay-05s">
                <div class="section-title">
                    <h2 class="head-title">Features</h2>
                    <hr class="botm-line">
                    <p class="sec-para">Perfect for beginners and experts alike..</p>
                </div>
            </div>
            <div class="col-md-9">
                <div class="col-md-6 wow fadeInRight delay-02s">
                    <div class="icon">
                        <i class="fa fa-paint-brush"></i>
                    </div>
                    <div class="icon-text">
                        <h3 class="txt-tl">Website features</h3>
                        <p class="txt-para">Fully customizable website, online store, and blog. </p>
                    </div>
                </div>
                <div class="col-md-6 wow fadeInRight delay-02s">
                    <div class="icon">
                        <i class="fa fa-cogs"></i>
                    </div>
                    <div class="icon-text">
                        <h3 class="txt-tl">Inventory features</h3>
                        <p class="txt-para">Unlimited bandwidth, product inventory, and customer data. </p>
                    </div>
                </div>
                <div class="col-md-6 wow fadeInRight delay-04s">
                    <div class="icon">
                        <i class="fa fa-mobile"></i>
                    </div>
                    <div class="icon-text">
                        <h3 class="txt-tl">Sales channels</h3>
                        <p class="txt-para">Sell on new sales channels like Pinterest and Amazon. </p>
                    </div>
                </div>
                <div class="col-md-6 wow fadeInRight delay-04s">
                    <div class="icon">
                        <i class="fa fa-desktop"></i>
                    </div>
                    <div class="icon-text">
                        <h3 class="txt-tl">Shopify Payments</h3>
                        <p class="txt-para">Accept credit cards instantly with Shopify Payments. </p>
                    </div>
                </div>
                <div class="col-md-6 wow fadeInRight delay-06s">
                    <div class="icon">
                        <i class="fa fa-lightbulb-o"></i>
                    </div>
                    <div class="icon-text">
                        <h3 class="txt-tl">Shopify Shipping</h3>
                        <p class="txt-para">Save time and money with Shopify Shipping and discounted rates. </p>
                    </div>
                </div>
                <div class="col-md-6 wow fadeInRight delay-06s">
                    <div class="icon">
                        <i class="fa fa-clock-o"></i>
                    </div>
                    <div class="icon-text">
                        <h3 class="txt-tl">Help Center</h3>
                        <p class="txt-para">We’re here to help with 24/7 award-winning customer support. </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!---->
<section class="section-padding parallax bg-image-2 section wow fadeIn delay-08s" id="cta-2">
    <div class="container">
        <div class="row">
            <div class="col-md-8">
                <div class="cta-txt">
                    <h3>Need products to start?</h3>
                    <p>No worries. We’re here to help you at every stage of your journey.!</p>
                </div>
            </div>
            <div class="col-md-4 text-center">
                <a href="#" class="btn btn-submit">Find Products</a>
            </div>
        </div>
    </div>
</section>
<!---->
<!---->
<section class="section-padding wow fadeInUp delay-02s" id="welcome_products">
    <div class="container">
        <div class="row">
            <div class="col-md-3 col-sm-12">
                <div class="section-title">
                    <h2 class="head-title">Products</h2>
                    <hr class="botm-line">
                    <p class="sec-para">Never worry about shipping, packaging, or holding inventory..</p>
                    <a href="<c:url value="/welcome/productList"/>" class="btn btn-submit" style="border-radius: 4px;">Shop Now!</a>
                </div>
            </div>
            <div class="col-md-9 col-sm-12">
                <div class="col-md-4 col-sm-6 padding-right-zero">
                    <div class="portfolio-box design">
                        <img src="<c:url value="/resources/img/port01.jpg"/>"  alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 padding-right-zero">
                    <div class="portfolio-box design">
                        <img src="<c:url value="/resources/img/port02.jpg"/>" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 padding-right-zero">
                    <div class="portfolio-box design">
                        <img src="<c:url value="/resources/img/port03.jpg"/>" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 padding-right-zero">
                    <div class="portfolio-box design">
                        <img src="<c:url value="/resources/img/port04.jpg"/>" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 padding-right-zero">
                    <div class="portfolio-box design">
                        <img src="<c:url value="/resources/img/port05.jpg"/>" alt="" class="img-responsive">
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 padding-right-zero">
                    <div class="portfolio-box design">
                        <img src="<c:url value="/resources/img/port06.jpg"/>" alt="" class="img-responsive">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!---->
<%@include file="/WEB-INF/views/template/welcome_footer.jsp"%>