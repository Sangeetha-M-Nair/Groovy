
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
  <script src="/KMIS/Presento/assets/js/main.js"></script></main>

		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'user.label', default: 'User')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-user" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-user" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list user">
			
				<g:if test="${userInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="user.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${userInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.mobileNo}">
				<li class="fieldcontain">
					<span id="mobileNo-label" class="property-label"><g:message code="user.mobileNo.label" default="Mobile No" /></span>
					
						<span class="property-value" aria-labelledby="mobileNo-label"><g:fieldValue bean="${userInstance}" field="mobileNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${userInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="user.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${userInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:userInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${userInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
