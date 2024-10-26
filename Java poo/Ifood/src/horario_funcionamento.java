import java.sql.Time;

public class horario_funcionamento extends Base{

    private String diaSemana;
    private Time horaAbertura;
    private Time horaFechamento;
    private restaurante restaurante;
    
    
    
	public String getDiaSemana() {
		return diaSemana;
	}
	public void setDiaSemana(String diaSemana) {
		this.diaSemana = diaSemana;
	}
	
	
	public Time getHoraAbertura() {
		return horaAbertura;
	}
	public void setHoraAbertura(Time horaAbertura) {
		this.horaAbertura = horaAbertura;
	}
	
	
	public Time getHoraFechamento() {
		return horaFechamento;
	}
	public void setHoraFechamento(Time horaFechamento) {
		this.horaFechamento = horaFechamento;
	}
	
	
	public restaurante getRestaurante() {
		return restaurante;
	}
	public void setRestaurante(restaurante restaurante) {
		this.restaurante = restaurante;
	}
    
    
	
}
