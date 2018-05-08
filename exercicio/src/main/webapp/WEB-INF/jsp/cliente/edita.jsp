<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="altera">
  <fieldset>
    <legend>Editar Cliente</legend>
    
    <input type="hidden" name="cliente.id" 
      value="${cliente.id}" /> 
    
    <label for="nome">Nome:</label>
    <input id="nome" type="text" 
      name="cliente.nome" value="${cliente.nome }"/>
    
    <label for="descricao">Descrição:</label>
    <input name="cliente.cpf"> ${cliente.cpf} </input>
  
    <button type="submit">Enviar</button>
  </fieldset>
</form>

</body>
</html>