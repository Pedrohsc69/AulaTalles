
public class pedido_produto extends Base{
    private pedido pedido;
    private produto produto;
    private int quantidade;
    
    
	public pedido getPedido() {
		return pedido;
	}
	public void setPedido(pedido pedido) {
		this.pedido = pedido;
	}
	
	
	public produto getProduto() {
		return produto;
	}
	public void setProduto(produto produto) {
		this.produto = produto;
	}
	
	
	public int getQuantidade() {
		return quantidade;
	}
	public void setQuantidade(int quantidade) {
		this.quantidade = quantidade;
	}
    
    
}
