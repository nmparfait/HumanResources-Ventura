<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <title>VENTURA | Register</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	    <link rel="stylesheet" href="css/cadastro.css" />
	</head>
	<body>
		<c:import url="/WEB-INF/jsp/app/menu.jsp"/>
		
		
	
		    <form class="box" action="/usuario/cadastro" method="post">
		    	<h1>Register</h1>
		    	
		    	<input type="text" class="form-control" placeholder="email@email.com"  name="email">
		        <input type="password" class="form-control" placeholder="********" name="senha">
		        <input type="text" class="form-control" placeholder="full name" name="nomeCompleto">
		        <input type="text" class="form-control" placeholder="phone number" name="telefone">
		        <input type="text" class="form-control" placeholder="cpf number" name="cpf">
		        <input type="text" class="form-control" placeholder="social reasons" name="razaoSocial">
		        <input type="text" class="form-control" placeholder="cnpj number" name="cnpj">
		        <h3>Type</h3>
		        <input type="radio" value="A" name="tipo">Administrador
		        <input type="radio" value="C" name="tipo">Candidato
		        <input type="radio" value="E" name="tipo">Empresa  
		    
		        <input type="submit" class="btn btn-default" name="" value="Register">
		    </form>
	</body>
</html>
