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
	    <!-- google font -->
	    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet"> 
	    <link rel="stylesheet" href="css/cadastro.css" />
	     <link rel="stylesheet" href="css/styles.css" />
	</head>
	<body>
		<c:import url="/WEB-INF/jsp/app/menu.jsp"/>

		<c:if test="${not empty vaga}">
			<div class="box">
				<form action="/empresa/criterios"  method="post">
					<div class="form-group">
						<label>Descrição:</label>
					  	<input type="text" class="form-control" name="descricao" value=${criterio.descricao}>
					</div>
					<div class="form-group">
						<label>Perfil:</label>
					    <input type="number" min="1" max="5" class="form-control" name="perfil" value=${criterio.perfil}>
					</div>
					<div class="form-group">
						<label>Peso:</label>
					    <input type="number" min="1" max="5" class="form-control" name="peso" value=${criterio.peso}>
					 </div>
					 <button type="submit" class="btn btn-default">more rules</button>
				</form>
			</div>
			<hr>
			<form action="/empresa/anunciarVaga" method="post">
				<button type="submit" class="btn btn-default">Share Post</button>
			</form>
		</c:if>