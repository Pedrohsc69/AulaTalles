import java.sql.Timestamp;

public class historico_entrega extends Base{
	
	private status_entrega statusEntrega;
    private pedido pedido;
    private Timestamp dataHora;
    
    
	public status_entrega getStatusEntrega() {
		return statusEntrega;
	}
	public void setStatusEntrega(status_entrega statusEntrega) {
		this.statusEntrega = statusEntrega;
	}
	
	
	public pedido getPedido() {
		return pedido;
	}
	public void setPedido(pedido pedido) {
		this.pedido = pedido;
	}
	
	
	public Timestamp getDataHora() {
		return dataHora;
	}
	public void setDataHora(Timestamp dataHora) {
		this.dataHora = dataHora;
	}
    
    
}
