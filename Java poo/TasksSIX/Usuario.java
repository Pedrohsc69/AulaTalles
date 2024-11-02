
public class Usuario extends base {
	private String nome;
	private int status;
	
	Usuario(String nome, int status){
		this.nome = nome;
		this.status = status;
	}
	
	@Override
	public void exibirStatus() {
		String statusStr = (status == ATIVO) ? "Ativo" : "Inativo";
        System.out.println("Usuário: " + nome + " - Status: " + statusStr);
	}

}
