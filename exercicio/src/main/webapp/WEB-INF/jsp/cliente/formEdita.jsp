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
<form action="<c:url value='/cliente/alterar'/>" method="POST">
  <fieldset>
    <legend>Editar Cliente</legend>
    
    <input type="hidden" name="cliente.id" value="${cliente.id}" /> 
    
    <label for="nome">Nome:</label>
    <input id="nome" type="text" name="cliente.nome" value="${cliente.nome }"/>
    <label for="cpf">CPF</label>
    <input name="cliente.cpf" value="${cliente.cpf}">  </input>
  
    <button type="submit">Enviar</button>
  </fieldset>
</form>

</body>
</html>