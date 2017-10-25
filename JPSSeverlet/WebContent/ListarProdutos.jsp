<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dal.ProdutoDAO" %>
<%@ page import="model.Produto" %>
<%@ page import="java.util.ArrayList" %>
    
    <%
   		ArrayList<Produto> produtosRetornados = ProdutoDAO.retornarProdutos();
    %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
<title>Insert title here</title>
</head>
<body>
<form class="form-horizontal" action="ProdutoServlet" method="get">
	<div class="col-lg-10">
	    <legend>Listar Produtos</legend>
	    
	    <table class="table  table-hover table-striped">
	    	<tr>
	    		<th>Id</th>
	    		<th>Nome</th>
	    		<th>Preço</th>
	    		<th>Quantidade</th>
	    		<th>Categoria</th>
	    	</tr>
	    
	    
	<% 
		for(Produto produtos : produtosRetornados){
	%>
	<tr>
		<td><%= produtos.getId() %></td>
		<td><%= produtos.getNome() %></td>
		<td><%= produtos.getCategoria() %></td>
		<td><%= produtos.getQuantidade() %></td>
		<td><%= produtos.getPreco() %></td>
	</tr>

<%
	}
%>
	</table>
</div>
</form>

</body>
</html>