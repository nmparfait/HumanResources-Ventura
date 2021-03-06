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
	    <title>VENTURA | Entreprise</title>
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
	    <link rel="stylesheet" href="../css/empresa.css" />
	    
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
		<!-- skills -->
    <section class="section skills">
    	<article class="hero-info">
		          <div class="underline"></div>
		          <h1>i'm ${usuario.nomeCompleto}</h1>
      
      </div>
      <!--end of section title  -->
      <div class="section-center skills-center">
        <article class="">
          <h3>frond end</h3>
          <!-- single skill -->
          <div class="skill">
            <p>html/css</p>
            <div class="skill-container">
              <div class="skill-value skill-value-90"></div>
              <p class="skill-text skill-text-90">90%</p>
            </div>
          </div>
          <!-- end of single skill -->

          <!-- single skill -->
          <div class="skill">
            <p>JavaScript</p>
            <div class="skill-container">
              <div class="skill-value skill-value-80"></div>
              <p class="skill-text skill-text-80">80%</p>
            </div>
          </div>
          <!-- end of single skill -->

          <!-- single skill -->
          <div class="skill">
            <p>react</p>
            <div class="skill-container">
              <div class="skill-value skill-value-70"></div>
              <p class="skill-text skill-text-70">70%</p>
            </div>
          </div>
          <!-- end of single skill -->
        </article>

        <article class="">
          <h3>back end</h3>
          <!-- single skill -->
          <div class="skill">
            <p>c#</p>
            <div class="skill-container">
              <div class="skill-value skill-value-80"></div>
              <p class="skill-text skill-text-80">80%</p>
            </div>
          </div>
          <!-- end of single skill -->

          <!-- single skill -->
          <div class="skill">
            <p>php</p>
            <div class="skill-container">
              <div class="skill-value skill-value-70"></div>
              <p class="skill-text skill-text-70">70%</p>
            </div>
          </div>
          <!-- end of single skill -->

          <!-- single skill -->
          <div class="skill">
            <p>python</p>
            <div class="skill-container">
              <div class="skill-value skill-value-90"></div>
              <p class="skill-text skill-text-90">90%</p>
            </div>
          </div>
          <!-- end of single skill -->
        </article>
      </div>
    </section>

    <!-- end of skills -->
    		<div class="section-title">
        		
        		<div class="underline"></div>
        		<form action="/postarVaga" method="get">
		            <button type="submit" class="btn btn-default ">Criar Vaga</button>
		        </form>
      		</div>
		    
		</div>
		<hr>
		<div class="container">
		    <h2>Share Jobs</h2>
		
		    <c:if test="${not empty vagas}">
		        <table class="table table-bordered">
		            <thead>
		            <tr>
		                <th>Id</th>
		                <th>Cargo</th>
		                <th>Cidade</th>
		                <th>Tipo de Contrato</th>
		            </tr>
		            </thead>
		            <tbody>
		            <c:forEach var="vaga" items="${vagas}" varStatus="id">
		                <tr>
		                    <td>${vaga.id}</td>
		                    <td>${vaga.cargo}</td>
		                    <td>${vaga.cidade}</td>
		                    <td>${vaga.tipoDeContrato}</td>
		                </tr>
		            </c:forEach>
		            </tbody>
		        </table>
		    </c:if>
		
		    <c:if test="${empty vagas}">
		        <h4>No job posted!</h4>
		    </c:if>
		</div>
		
		<c:import url="/WEB-INF/jsp/app/footer.jsp"/>
	
	</body>
</html>
