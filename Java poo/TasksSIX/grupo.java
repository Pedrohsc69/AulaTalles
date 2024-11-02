import java.util.ArrayList;
import java.util.List;

public class grupo extends base {

	private String nomeGrupo;
	private List<Usuario> usuarios;
	
	grupo(String nomeGrupo){
		this.nomeGrupo = nomeGrupo;
		this.usuarios = new ArrayList<>();
	}
	
	public void addUsuario(Usuario usuario) {
		usuarios.add(usuario);
	}
	
	@Override
	public void exibirStatus() {
		System.out.println("Grupo: " + nomeGrupo);
		for (Usuario usuario : usuarios) {
            usuario.exibirStatus();
		}
	}
	
	
}
