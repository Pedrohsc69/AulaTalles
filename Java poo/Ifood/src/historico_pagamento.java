import java.sql.Date;
import java.math.BigDecimal;

public class historico_pagamento extends Base{

    private Date dataPaga;
    private forma_pagamento forma_paga;
    private BigDecimal valor;
    
    
	public Date getDataPaga() {
		return dataPaga;
	}
	public void setDataPaga(Date dataPaga) {
		this.dataPaga = dataPaga;
	}
	
	
	public forma_pagamento getForma_paga() {
		return forma_paga;
	}
	public void setForma_paga(forma_pagamento forma_paga) {
		this.forma_paga = forma_paga;
	}
	
	
	public BigDecimal getValor() {
		return valor;
	}
	public void setValor(BigDecimal valor) {
		this.valor = valor;
	}
	
    
    
}
