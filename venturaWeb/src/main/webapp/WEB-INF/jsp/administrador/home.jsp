<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
	<head>
	    <title>VENTURA | Admin</title>
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
	   	<!-- google font -->
		<link href="https://fonts.googleapis.com/css2?family=Dancing+Script&display=swap" rel="stylesheet">
		<link rel="stylesheet" href="css/styles.css">
		<link rel="stylesheet" href="css/login.css" />
		<link rel="stylesheet" href="css/footer.css" />
	</head>
	<body>
		<c:import url="/WEB-INF/jsp/app/menu.jsp"/>
	
		<div class="container">
		    <div class="page-header">
		        
		        <p>Welcome to the admin account ${usuario.nomeCompleto}</p>
		    </div>
		</div>
		
		<c:import url="/WEB-INF/jsp/app/footer.jsp"/>
	</body>
</html>
