<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<title>Insert title here</title>
</head>
<body>


	<div class="container">

		<nav class="navbar navbar-light bg-light"> <span 
			class="navbar-brand mb-0 h1">Clientes</span> </nav>

		<table class="table table-hover">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>CPF</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listaCliente}" var="cliente">
					<tr>
						<th>${cliente.id}</th>
						<th>${cliente.nome}</th>
						<th>${cliente.cpf}</th>
						<th><a class="btn btn-primary"
							href="<c:url value='/cliente/formEdita/${cliente.id}'/>">Alterar</a></th>
						<th><a class="btn btn-primary"
							href="<c:url value='/cliente/remove/${cliente.id}'/>">Remover</a></th>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		<div class="container">
	    <a class="btn btn-primary" href="<c:url value='/cliente/formulario'/>">Cadastrar</a>
	</div>
	</div>
	
	





</body>
</html>