<!DOCTYPE html>
<%@page import="com.configurations.AppConfig"%>
<%@page import="com.model.RegisterModel"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>VTJCC04</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,600;1,700&family=Montserrat:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&family=Raleway:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">
<!-- Remember to include jQuery :) -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Impact - v1.1.1
  * Template URL: https://bootstrapmade.com/impact-bootstrap-business-website-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <section id="topbar" class="topbar d-flex align-items-center">
    <div class="container d-flex justify-content-center justify-content-md-between">
      <div class="contact-info d-flex align-items-center">
     
      </div>
      <div class="social-links d-none d-md-flex align-items-center">
        
      </div>
    </div>
  </section><!-- End Top Bar -->

  <header id="header" class="header d-flex align-items-center">

    <div class="container-fluid container-xl d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
        <!-- Uncomment the line below if you also wish to use an image logo -->
        <!-- <img src="assets/img/logo.png" alt=""> -->
        <h1>AN ENCRYPTED CLOUD EMAIL SEARCHING <span>.</span></h1>
      </a>
      <nav id="navbar" class="navbar">
        <ul>
          <li><a href="#hero">Home</a></li>
          <li><a href="admin.jsp?page=users">View Users</a></li>
          <li><a href="admin.jsp?page=keys">Generate Keys </a></li>
          <li><a href="#portfolio">Logout</a></li>
          
    
      </nav><!-- .navbar -->

      <i class="mobile-nav-toggle mobile-nav-show bi bi-list"></i>
      <i class="mobile-nav-toggle mobile-nav-hide d-none bi bi-x"></i>

    </div>
  </header><!-- End Header -->
  <!-- End Header -->

<%
if(request.getParameter("page").equalsIgnoreCase("home")){%>
	 <main id="main">

<div class="row">
<div class="col-4"></div>
<div class="col-4">
<h3>Welcome to Admin Page</h3>

</div>
<div class="col-4"></div>
</div>


   </main><!-- End #main -->
	
<%}%>

<!-- -users data -->
<%
if(request.getParameter("page").equalsIgnoreCase("users")){%>
	 <main id="main">

<div class="row" style="margin-top: 100px;">
<div class="col-4"></div>
<div class="col-4">
<%
List<RegisterModel> reg=AppConfig.getEmailSearchService().getUsers(); 
%>
<table class="table">
<tr>
<th>UserId</th>
<th>Email Id</th>
<th>UserName</th>
<th>Department</th>
</tr>
<%
for(RegisterModel rm:reg){%>
	<tr>
	<td><%=rm.getUserid() %></td>
	<td><%=rm.getEmailid() %></td>
	<td><%=rm.getName() %></td>
	<td><%=rm.getDepartment() %></td>
	
	</tr>
	
	
<% }%>



</table>

</div>
<div class="col-4"></div>
</div>


   </main><!-- End #main -->
	
<%}%>
 
 <!-- end of users data -->
 
 <!-- -users data -->
<%
if(request.getParameter("page").equalsIgnoreCase("keys")){%>
	 <main id="main">

<div class="row" style="margin-top: 100px;">
<div class="col-4"></div>
<div class="col-4">
<%
List<RegisterModel> reg=AppConfig.getEmailSearchService().getUsers(); 
%>
<table class="table">
<tr>
<th>UserId</th>
<th>Email Id</th>
<th>UserName</th>
<th>Department</th>
<th>public key</th>
<th>Private key</th>
</tr>
<%
for(RegisterModel rm:reg){%>
	<tr>
	<td><%=rm.getUserid() %></td>
	<td><%=rm.getEmailid() %></td>
	<td><%=rm.getName() %></td>
	<td><%=rm.getDepartment() %></td>
	
	</tr>
	
	
<% }%>



</table>

</div>
<div class="col-4"></div>
</div>


   </main><!-- End #main -->
	
<%}%>
 
 <!-- end of users data -->




  <a href="#" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <div id="preloader"></div>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>