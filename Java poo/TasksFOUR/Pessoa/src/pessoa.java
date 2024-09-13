public class pessoa {
    public static void main(String[] args) {
        // Criando duas pessoas e preenchendo seus dados
        class_pessoa pessoa1 = new class_pessoa("João Silva", 30, 1.75, 70.5, "Rua A, 123", "91234-5678", "joao.silva@example.com", "123.456.789-00", "MG-12.345.678", "Brasileiro");
        class_pessoa pessoa2 = new class_pessoa("Maria Oliveira", 25, 1.65, 60.0, "Rua B, 456", "98765-4321", "maria.oliveira@example.com", "987.654.321-00", "SP-98.765.432", "Brasileira");

        // Exibindo os dados das pessoas
        System.out.println("Pessoa 1:");
        System.out.println("Nome: " + pessoa1.getNome());
        System.out.println("Idade: " + pessoa1.getIdade());
        System.out.println("Altura: " + pessoa1.getAltura());
        System.out.println("Peso: " + pessoa1.getPeso());
        System.out.println("Endereço: " + pessoa1.getEndereco());
        System.out.println("Telefone: " + pessoa1.getTelefone());
        System.out.println("Email: " + pessoa1.getEmail());
        System.out.println("CPF: " + pessoa1.getCpf());
        System.out.println("RG: " + pessoa1.getRg());
        System.out.println("Nacionalidade: " + pessoa1.getNacionalidade());

        System.out.println("\nPessoa 2:");
        System.out.println("Nome: " + pessoa2.getNome());
        System.out.println("Idade: " + pessoa2.getIdade());
        System.out.println("Altura: " + pessoa2.getAltura());
        System.out.println("Peso: " + pessoa2.getPeso());
        System.out.println("Endereço: " + pessoa2.getEndereco());
        System.out.println("Telefone: " + pessoa2.getTelefone());
        System.out.println("Email: " + pessoa2.getEmail());
        System.out.println("CPF: " + pessoa2.getCpf());
        System.out.println("RG: " + pessoa2.getRg());
        System.out.println("Nacionalidade: " + pessoa2.getNacionalidade());
    }
}