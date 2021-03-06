<%-- 
    Document   : index
    Created on : Mar 2, 2018, 9:25:05 AM
    Author     : IbrahimDesouky
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="true" %>

﻿<!DOCTYPE html>
<html lang="en">
<head>
<title>Colo Shop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
</head>

<body>

        <div class="super_container">

            <!-- Header -->

            <header class="header trans_300">

                <!-- Top Navigation -->

                <div class="top_nav">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="top_nav_left">free shipping on all u.s orders over $50</div>
                            </div>
                            <div class="col-md-6 text-right">
                                <div class="top_nav_right">
                                    <ul class="top_nav_menu">

                                        <!--  My Account -->


                                        <li class="account">
                                            <a href="#">
                                                My Account
                                                <i class="fa fa-angle-down"></i>
                                            </a>
                                            <ul class="account_selection">
                                                <li><a href="Logout"><i class="fa fa-sign-in" aria-hidden="true"></i>LogOut</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Main Navigation -->

                <div class="main_nav_container">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 text-right">
                                <div class="logo_container">
                                    <a href="#">colo<span>shop</span></a>
                                </div>
                                <nav class="navbar">

                                    <ul class="navbar_user">
                                        <li><a href="index.jsp" <i class="fa fa-home" aria-hidden="true"></i></a></li>
                                        <li class="checkout">
                                            <a href="#">
                                                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                                                <span id="checkout_items" class="checkout_items">2</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <div class="hamburger_container">
                                        <i class="fa fa-bars" aria-hidden="true"></i>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>

            </header>

            <div class="fs_menu_overlay"></div>
            <div class="hamburger_menu">
                <div class="hamburger_close"><i class="fa fa-times" aria-hidden="true"></i></div>
                <div class="hamburger_menu_content text-right">
                    <ul class="menu_top_nav">


                        <li class="menu_item has-children">
                            <a href="#">
                                My Account
                                <i class="fa fa-angle-down"></i>
                            </a>
                            <ul class="menu_selection">
                                <li><a href="login.html"><i class="fa fa-sign-out" aria-hidden="true"></i>LogOut</a></li>
                            </ul>
                        </li>

                    </ul>
                </div>
            </div>

  <!-- Slider -->

  
  </header>

 
 
  </br> </br> </br>  </br>  </br> </br> </br>  </br>
<div class="container">
  <h4>Edit Profile</h4>
    <hr>
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        
        <form class="form-horizontal" role="form"  action="EditProfile" method="post">
          <div class="form-group">
            <label class="col-lg-3 control-label">Name:</label>
            <div class="col-lg-8">
               
                
                <input class="form-control" type="text" name="name" maxlength="30"  value="${sessionScope.userDate.name}" required >
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
                <input class="form-control" type="text" name="email" maxlength="30"  value="${sessionScope.userDate.email}" readonly required>
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Job:</label>
            <div class="col-lg-8">
                <input class="form-control" type="text" name="job" maxlength="30"  value="${sessionScope.userDate.job}" required >
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Address:</label>
            <div class="col-lg-8">
              <input class="form-control" type="text" name="address" maxlength="40"  value="${sessionScope.userDate.address}" required>
            </div>
         
          </div>
           <div class="form-group">
            <label class="col-lg-3 control-label">CreditLimit:</label>
            <div class="col-lg-8">
              <input class="form-control" type="number"  maxlength="10"  name="creditLimit" value="${sessionScope.userDate.cridet}" required>
            </div>
          </div>

           <div class="form-group">
            <label class="col-md-3 control-label">Old Password:</label>
            <div class="col-md-8">
                <input class="form-control" type="password"  id="oldpassword" name="oldPassword" value="" >
               <span id='wrongPassword'></span>
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label"  >New Password:</label>
            <div class="col-md-8">
              <input  class="form-control" type="password" id="newpassword"  onfocus="check()" onblur="release()" name="newPassword" value="">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input   type="submit" class="btn btn-default" style="background-color: #fe4c50; color:white; " value="Save Changes">
              <span></span>
              <a class="btn btn-default" style="background-color: #fe4c50; color:white;"href="profile.jsp">Cancle</a>
            </div>
          </div>
      
        </form>
      </div>
  </div>
</div>
<hr>

  <!-- Footer -->


</div>

<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script>
<script src="js/editProfile.js"></script>
</body>

</html>

