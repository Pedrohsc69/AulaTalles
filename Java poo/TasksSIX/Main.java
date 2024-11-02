
public class Main {

	public static void main(String[] args) {
		Usuario usuario1 = new Usuario("Alice", base.ATIVO);
        Usuario usuario2 = new Usuario("Bob", base.INATIVO);

        
        grupo grupo = new grupo("Desenvolvimento");
        grupo.addUsuario(usuario1);
        grupo.addUsuario(usuario2);

        
        grupo.exibirStatus();

	}

}
