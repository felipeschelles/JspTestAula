package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Produto;
import dal.ProdutoDAO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

@WebServlet("/ProdutoServlet")
public class ProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Produto produto = new Produto();
		
		try{
			produto.setNome(request.getParameter("txtNome"));
			produto.setCategoria(request.getParameter("txtCategoria"));
			produto.setQuantidade(Integer.parseInt(request.getParameter("txtQuantidade")));
			produto.setPreco(Double.parseDouble(request.getParameter("txtPreco")));
			if(ProdutoDAO.cadastrarProduto(produto)){
				response.sendRedirect("CadastrarProduto.jsp?mensagem=2");
			}else{
				response.sendRedirect("CadastrarProduto.jsp?mensagem=3");
			}

		}catch(NumberFormatException e){
			response.sendRedirect("CadastrarProduto.jsp?mensagem=1");
		}
		
		
	
		System.out.println("Nome: " + ProdutoDAO.retornarProdutos().get(0).getNome());
		System.out.println("Categoria: " + ProdutoDAO.retornarProdutos().get(0).getCategoria());
		System.out.println("Preço: " + ProdutoDAO.retornarProdutos().get(0).getPreco() + "R$");
		System.out.println("Quantidade: " + ProdutoDAO.retornarProdutos().get(0).getQuantidade());
		
	}
	


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
