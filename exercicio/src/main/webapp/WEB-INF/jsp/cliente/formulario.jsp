<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>

<div class="container">

<nav class="navbar navbar-light bg-light"> <span 
			class="navbar-brand mb-0 h1">Cadastro Clientes</span> </nav>


<form action="<c:url value='/cliente/teste'/>" method="POST" class="form-control">
		Nome: <input type="text" class="form-control" name="cliente.nome"> 
		CPF: <input type="text" class="form-control" name="cliente.cpf"> 
		<a class="btn btn-primary" href="<c:url value='/cliente'/>">Cancelar</a>
		<input class="btn btn-primary" type="submit" value="Adicionar">
	</form>
</div>
	
</body>
</html>