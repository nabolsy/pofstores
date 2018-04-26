<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: TONY01111423233
  Date: 4/14/2018
  Time: 7:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!---->
<section class="section-padding wow fadeInUp delay-05s" id="welcome_contact">
    <div class="container">
        <div class="row white">
            <div class="col-md-8 col-sm-12">
                <div class="section-title">
                    <h2 class="head-title black">Contact Us</h2>
                    <hr class="botm-line">
                    <p class="sec-para black">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua..</p>
                </div>
            </div>
            <div class="col-md-12 col-sm-12">
                <div class="col-md-4 col-sm-6" style="padding-left:0px;">
                    <h3 class="cont-title">Email Us</h3>
                    <div id="sendmessage">Your message has been sent. Thank you!</div>
                    <div id="errormessage"></div>
                    <div class="contact-info">
                        <form action="" method="post" role="form" class="contactForm">
                            <div class="form-group">
                                <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                <div class="validation"></div>
                            </div>
                            <div class="form-group">
                                <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                <div class="validation"></div>
                            </div>

                            <div class="form-group">
                                <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                <div class="validation"></div>
                            </div>

                            <div class="form-group">
                                <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                <div class="validation"></div>
                            </div>
                            <button type="submit" class="btn btn-send">Send</button>
                        </form>
                    </div>

                </div>
                <div class="col-md-4 col-sm-6">
                    <h3 class="cont-title">Visit Us</h3>
                    <div class="location-info">
                        <p class="white"><span aria-hidden="true" class="fa fa-map-marker"></span>Via Principe zwil 9, FCI, Dokki</p>
                        <p class="white"><span aria-hidden="true" class="fa fa-phone"></span>Phone: 555-5555-555</p>
                        <p class="white"><span aria-hidden="true" class="fa fa-envelope"></span>Email: <a href="" class="link-dec">muhammadsalahup@gmail.com</a></p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="contact-icon-container hidden-md hidden-sm hidden-xs">
                        <span aria-hidden="true" class="fa fa-envelope-o"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!---->
<!---->
<footer class="" id="welcome_footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-7 footer-copyright">
                ©   POF SHOP - All rights reserved
                <div class="credits">
                    Designed by <a href="https://bootstrapmade.com/">Nabolsy</a>
                </div>
            </div>
            <div class="col-sm-5 footer-social">
                <div class="pull-right hidden-xs hidden-sm">
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-google-plus"></i></a>
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                </div>
            </div>
        </div>
    </div>
</footer>
<!---->
<!--contact ends-->
<script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
<script src="<c:url value="/resources/js/jquery.easing.min.js"/>"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/js/wow.js"/>"></script>
<script src="<c:url value="/resources/js/custom.js"/>"></script>
<script src="<c:url value="/resources/contactform/contactform.js"/>"></script>