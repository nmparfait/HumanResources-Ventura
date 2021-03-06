<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
	<head>
	    <meta charset="UTF-8" />
	    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
	    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	    <title>VENTURA | User</title>
	    <!-- font awesome -->
	    <link
	      rel="stylesheet"
	      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css"
	    />
	    <!-- google font -->
	    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
	    <!-- style -->
	    <link rel="stylesheet" href="../css/styles.css" />
	    <link rel="stylesheet" href="../css/footer.css" />
	    
  	</head>
  	 <body>
  	 	<nav class="navbar navbar-default navbar-fixed-top">
  			<div class="container-fluid">
    			<div class="navbar-header">
      				<a class="navbar-brand font logoVentura" href="http://localhost:8080">Ventura HR</a>
    			</div>
	  	 	<ul class="nav navbar-nav navbar-right">
				<c:if test="${not empty usuario}">
				    
				    <li><a href="http://localhost:8080/#about"><span class="glyphicon glyphicon-flag navSize"></span> About</a></li>
				    <li><a href="http://localhost:8080/#service"><span class="glyphicon glyphicon-retweet navSize"></span> Services</a></li>
				    <li><a href="http://localhost:8080/#contact"><span class="glyphicon glyphicon-envelope navSize"></span> Contact</a></li>
			    </c:if>
			    <c:if test="${not empty usuario}">
			    	<li><a href="/logout"><span class="glyphicon glyphicon-log-out"></span>Logout, ${usuario.email}</a></li>
			    </c:if>
			 </ul>
		</nav>
		

		<header class="hero">
      		<div class="section-center hero-center">
		        <article class="hero-info">
		          <div class="underline"></div>
		          <h1>i'm ${usuario.nomeCompleto}</h1>
		          <h4>Get access to the best jobs published in the city</h4>
		          <a href="contact.html" class="btn hero-btn">read more</a>
		          <!-- social icons -->
		          <ul class="social-icons hero-icons">
		            <li>
		              <a href="https://linkedin.com" class="social-icon"
		                ><i class="fab fa-linkedin"></i
		              ></a>
		            </li>
		            <li>
		              <a href="https://twitter.com" class="social-icon"
		                ><i class="fab fa-twitter"></i
		              ></a>
		            </li>
		            <li>
		              <a href="https://github.com/nmparfait" class="social-icon"
		                ><i class="fab fa-github"></i
		              ></a>
		            </li>
		            <li>
		              <a href="https://google.com" class="social-icon"
		                ><i class="fab fa-google"></i
		              ></a>
		            </li>
		          </ul>
		        </article>
	        <article class="hero-img">
	          <img src="/img/userpage.jpg" alt="nmp photo" class="hero-photo" />
	        </article>
	      </div>
	    </header>
		    
		
		<c:import url="/WEB-INF/jsp/app/footer.jsp"/>
		
		
    </body>
   </html>
