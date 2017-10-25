<%@page import="controller.ProdutoServlet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <% String parametro = request.getParameter("mensagem"); 
    	String mensagem = "";
    	String classe = "";
    	if(parametro != null){
	    	if(parametro.equals("1")){
	    		classe = "text-warning";
	    		mensagem = "Preço ou quantidade em formato incorreto";
	    	}else{
	    		if(parametro.equals("2")){
	    			classe = "text-success";
		    		mensagem = "Produto cadastrado com sucesso!";
	    		}else{
	    			classe = "text-danger";
		    		mensagem = "Produto ja cadastrado";		
	    		}
	    	}
    	}
    %>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
<script src="js/bootstrap.js"></script>
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Brand</a>
    </div>

</div>
</nav>

	<form class="form-horizontal" action="ProdutoServlet" method="get">
	  <fieldset>
	  <div class="col-lg-10">
	    <legend>Cadastrar Produto</legend>
	  </div>
	    <div class="form-group">
	      <label for="inputext" class="col-lg-2 control-label">Nome do produto</label>
	      <div class="col-lg-10">
	        <input type="text" class="form-control"  placeholder="Nome" name="txtNome">
	      </div>
	    </div>
	    <div class="form-group">
	      <label for="inputtext" class="col-lg-2 control-label">Categotia do produto</label>
	      <div class="col-lg-10">
	        <input type="text" class="form-control" placeholder="Categoria" name="txtCategoria">
	      </div>
	    </div>
	     <div class="form-group">
	      <label for="inputext" class="col-lg-2 control-label">Quantidade de produtos</label>
	      <div class="col-lg-10">
	        <input type="text" class="form-control"  placeholder="Quantidade" name="txtQuantidade">
	      </div>
	    </div>
	     <div class="form-group">
	      <label for="inputext" class="col-lg-2 control-label">Preço do produto</label>
	      <div class="col-lg-10">
	        <input type="text" class="form-control"  placeholder="Preço" name="txtPreco">
	      </div>
	    </div>
	    <div class="form-group">
	      <div class="col-lg-10 col-lg-offset-2">
	        <button type="reset" class="btn btn-default">Cancelar</button>
	        <button type="submit" class="btn btn-primary" name="btnCadastro">Cadastrar</button>
	      </div>
	    </div>
	    <div class="form-group">
	    	<label class="<%= classe %>">
	    		<%= mensagem %>	
	    	</label>
	    </div>
	  	<div class="btn-group-vertical">
		    <a href="ListarProdutos.jsp" class="btn btn-default">Produtos Cadastrados</a>

		</div>
	  </fieldset>
	</form>
	

</body>
</html>