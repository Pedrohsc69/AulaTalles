import java.util.List;
import java.math.BigDecimal;

public class acompanhamento extends Base{

    private String nome;
    private String descricao;
    private BigDecimal valor;
    private List<produto> produtos;
    
    
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
	
	
	public BigDecimal getValor() {
		return valor;
	}
	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
	
	
	public List<produto> getProdutos() {
		return produtos;
	}
	public void setProdutos(List<produto> produtos) {
		this.produtos = produtos;
	}
    
    
}
