
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
          <li><a class="nav-link scrollto active" href="#hero">Home</a></li>
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
  
  <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex align-items-center">

    <div class="container" data-aos="zoom-out" data-aos-delay="100">
      <div class="row">
        <div class="col-xl-6">
          <h1>Bettter SOFTWARE Development experience with KMIS</h1>
          <h2>We are team of talented developers making websites with Bootstrap</h2>
          <a href="#about" class="btn-get-started scrollto">Get Started</a>
        </div>
      </div>
    </div>

  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= Clients Section ======= -->
    <section id="clients" class="clients">
      <div class="container" data-aos="zoom-in">


    </section><!-- End Clients Section -->
  
		 <div id="list-user" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if><br>
			<table>
			<thead>
					<tr>
					
						<td><g:sortableColumn property="name" title="${message(code: 'user.name.label', default: 'Name')}" /></td>
					
					   <td><g:sortableColumn property="mobileNo" title="${message(code: 'user.mobileNo.label', default: 'Mobile No')}" /></td>
					
					    <td><g:sortableColumn property="email" title="${message(code: 'user.email.label', default: 'Email')}" /></td>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${userInstanceList}" status="i" var="userInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: userInstance, field: "mobileNo")}</td>
					
						<td>${fieldValue(bean: userInstance, field: "email")}</td>
					
					</tr>
				</g:each>
				</tbody>
				
			</table>
			<div class="pagination">
				<g:paginate total="${userInstanceCount ?: 0}" />
			</div>
		</div>
		
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
