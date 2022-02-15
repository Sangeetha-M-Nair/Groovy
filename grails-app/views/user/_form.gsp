<%@ page import="home.User" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
  		<meta content="width=device-width, initial-scale=1.0" name="viewport">		
  		<meta content="" name="description">
  		<meta content="" name="keywords">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
		<title>Kenzai Mind Info Solutions /></title>


  <!-- Favicons --
  <link href="/KMIS/Presento/assets/img/favicon.png" rel="icon">
  <link href="/KMIS/Presento/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="/KMIS/Presento/assets/vendor/aos/aos.css" rel="stylesheet">
  <link href="/KMIS/Presento/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/KMIS/Presento/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="/KMIS/Presento/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="/KMIS/Presento/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="/KMIS/Presento/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="/KMIS/Presento/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <link href="/KMIS/Presento/assets/css/style.css" rel="stylesheet">
	</head>
	<body>
		<!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">
      <h1 class="logo me-auto"><a href="/KMIS/Presento/index.html">KMIS<span>.</span></a></h1>
     

      <nav id="navbar" class="navbar order-last order-lg-0">
        <ul>
          <li><a class="nav-link scrollto active" href="/KMIS/user/index.gsp">Home</a></li>
          <li><a class="nav-link scrollto" href="#about">About</a></li>
          <li><a class="nav-link scrollto" href="/KMIS/user/create.gsp">User</a></li>
           <li><a class="nav-link scrollto" href="/KMIS/user/employeeLogin.gsp">Login</a></li>
          <li><a class="nav-link scrollto" href="#contact">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

      <a href="#about" class="get-started-btn scrollto">Get Started</a>
    </div>
  </header><!-- End Header -->
  
  
  <main id="main">

   
   
		
		<!-- Vendor JS Files -->
  <script src="/KMIS/Presento/assets/vendor/aos/aos.js"></script>
  <script src="/KMIS/Presento/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="/KMIS/Presento/assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="/KMIS/Presento/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="/KMIS/Presento/assets/vendor/php-email-form/validate.js"></script>
  <script src="/KMIS/Presento/assets/vendor/purecounter/purecounter.js"></script>
  <script src="/KMIS/Presento/assets/vendor/swiper/swiper-bundle.min.js"></script>

  <!-- Template Main JS File -->
  <script src="/KMIS/Presento/assets/js/main.js"></script>
	</body>
</html>
    
<table>
<tr>
<th><div class="fieldcontain ${hasErrors(bean: userInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="user.name.label" default="Name" />
		
	</label>*</th>
<th>
	<g:textField name="name" maxlength="50" required="" value="${userInstance?.name}"/>
</th>

</div>
</tr>
<tr><th>

<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'mobileNo', 'error')} required">
	<label for="mobileNo">
		<g:message code="user.mobileNo.label" default="Mobile No" />
	</label>*</th><th>
	<g:textField name="mobileNo" maxlength="50" required="" value="${userInstance?.mobileNo}"/></th>

</div>
</tr>
<tr>
<th>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="user.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label></th><th>
	<g:textField name="email" maxlength="50" required="" value="${userInstance?.email}"/>
</th>
</div>
</tr>
<tr>
<th>
<div class="fieldcontain ${hasErrors(bean: userInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="user.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label></th><th>
	<g:textField name="password" maxlength="50" required="" value="${userInstance?.password}"/>
</th>
</div>
</tr>
</table>