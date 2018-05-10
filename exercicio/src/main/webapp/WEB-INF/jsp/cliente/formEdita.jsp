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
<title>Alterar Cliente</title>
</head>
<body>

	<div class="container">
		<form action="<c:url value='/cliente/alterar'/>" method="POST"
			class="form-control">
			<input type="hidden" name="cliente.id" value="${cliente.id}" /> <label
				for="nome">Nome:</label> <input id="nome" type="text"
				class="form-control" name="cliente.nome" value="${cliente.nome }" />
			<label for="cpf">CPF</label> <input name="cliente.cpf"
				class="form-control" value="${cliente.cpf}"> </input> <a
				class="btn btn-primary" href="<c:url value='/cliente'/>">Cancelar</a>
			<button class="btn btn-primary" type="submit">Enviar</button>
		</form>
	</div>


</body>
</html>