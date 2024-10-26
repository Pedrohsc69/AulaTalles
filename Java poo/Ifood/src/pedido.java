import java.util.List;
import java.math.BigDecimal;

public class pedido extends Base{

	private String nome;
	private String descricao;
	private BigDecimal preco;
	private categoria categoria;
	private restaurante restaurante;
	private List<acompanhamento> acompanhamento;
	
	
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	
	public BigDecimal getPreco() {
		return preco;
	}
	public void setPreco(BigDecimal preco) {
		this.preco = preco;
	}
	
	
	public categoria getCategoria() {
		return categoria;
	}
	public void setCategoria(categoria categoria) {
		this.categoria = categoria;
	}
	
	
	public restaurante getRestaurante() {
		return restaurante;
	}
	public void setRestaurante(restaurante restaurante) {
		this.restaurante = restaurante;
	}
	
	
	public List<acompanhamento> getAcompanhamento() {
		return acompanhamento;
	}
	public void setAcompanhamento(List<acompanhamento> acompanhamento) {
		this.acompanhamento = acompanhamento;
	}

	    
	
}
