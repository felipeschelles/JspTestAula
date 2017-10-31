package dal;

import java.util.ArrayList;

import org.apache.jasper.tagplugins.jstl.core.ForEach;

import model.Produto;
import sun.text.resources.fr.FormatData_fr_BE;


public class ProdutoDAO {

	private static ArrayList<Produto> produtos = new ArrayList<Produto>();
	
	public static boolean cadastrarProduto(Produto produto) {
		boolean produtoBuscado;
		produtoBuscado = ProdutoDAO.buscarProdutoPorNome(produto.getNome());
		if (produtos.size() > 0) {
			int id = produtos.get(produtos.size() - 1).getId();
			produto.setId(id + 1);
		}else{
			produto.setId(1);
		}
		if(produtoBuscado == true){
				produtos.add(produto);
				return true;
		}
	return false;
		
	}
	
	public static boolean buscarProdutoPorNome(String nomeProduto){
		for(Produto produtoCadastrado : produtos){
			if(produtoCadastrado.getNome().equals(nomeProduto)){
				return false;
			}
		}
		return true;
	}
	
	
	public static ArrayList<Produto> retornarProdutos() {
		return produtos;
	}
}
