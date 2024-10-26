import java.util.List;

public class categoria extends Base{


    private String tipo;
    private String nome;
    private String descricao;
    private List<produto> produtos;
    
    
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	
	
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
	
	
	public List<produto> getProdutos() {
		return produtos;
	}
	public void setProdutos(List<produto> produtos) {
		this.produtos = produtos;
	}
    
    
	
}
