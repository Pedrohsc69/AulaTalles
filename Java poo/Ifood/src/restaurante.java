import java.util.List; 
public class restaurante extends Base{

	    private String nome;
	    private endereco endereco;
	    private String telefone;
	    private categoria categoria;
	    private horario_funcionamento horarioFunc;
	    private boolean isRetirada;
	    private List<produto> produtos;
	    
	    
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		
		
		public endereco getEndereco() {
			return endereco;
		}
		public void setEndereco(endereco endereco) {
			this.endereco = endereco;
		}
		
		
		public String getTelefone() {
			return telefone;
		}
		public void setTelefone(String telefone) {
			this.telefone = telefone;
		}
		
		
		public categoria getCategoria() {
			return categoria;
		}
		public void setCategoria(categoria categoria) {
			this.categoria = categoria;
		}
		
		
		public horario_funcionamento getHorarioFunc() {
			return horarioFunc;
		}
		public void setHorarioFunc(horario_funcionamento horarioFunc) {
			this.horarioFunc = horarioFunc;
		}
		
		
		public boolean isRetirada() {
			return isRetirada;
		}
		public void setRetirada(boolean isRetirada) {
			this.isRetirada = isRetirada;
		}
		
		
		public List<produto> getProdutos() {
			return produtos;
		}
		public void setProdutos(List<produto> produtos) {
			this.produtos = produtos;
		}
	
	    
	    
	
}
