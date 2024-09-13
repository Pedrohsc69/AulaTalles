public class Carro {
    // Atributos
    private String marca;
    private String modelo;
    private int ano;
    private String cor;
    private double preco;
    private boolean isLigado;
    private int velocidade;
    private int combustivel;

    // Construtor padrão
    public Carro() {
        this.marca = "Desconhecida";
        this.modelo = "Desconhecido";
        this.ano = 0;
        this.cor = "Desconhecida";
        this.preco = 0.0;
        this.isLigado = false;
        this.velocidade = 0;
        this.combustivel = 0;
    }

    // Construtor com alguns parâmetros
    public Carro(String marca, String modelo, int ano) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.cor = "Desconhecida";
        this.preco = 0.0;
        this.isLigado = false;
        this.velocidade = 0;
        this.combustivel = 0;
    }

    // Construtor com todos os parâmetros
    public Carro(String marca, String modelo, int ano, String cor, double preco, boolean isLigado, int velocidade, int combustivel) {
        this.marca = marca;
        this.modelo = modelo;
        this.ano = ano;
        this.cor = cor;
        this.preco = preco;
        this.isLigado = isLigado;
        this.velocidade = velocidade;
        this.combustivel = combustivel;
    }

    // Métodos
    public void ligar() {
        this.isLigado = true;
    }

    public void desligar() {
        this.isLigado = false;
    }

    public void acelerar(int incremento) {
        if (this.isLigado) {
            this.velocidade += incremento;
        }
    }

    public void frear(int decremento) {
        if (this.isLigado && this.velocidade > 0) {
            this.velocidade -= decremento;
        }
    }

    public void abastecer(int litros) {
        this.combustivel += litros;
    }

    public void pintar(String novaCor) {
        this.cor = novaCor;
    }

    public void mostrarInfo() {
        System.out.println("Marca: " + this.marca);
        System.out.println("Modelo: " + this.modelo);
        System.out.println("Ano: " + this.ano);
        System.out.println("Cor: " + this.cor);
        System.out.println("Preço: " + this.preco);
        System.out.println("Está ligado: " + this.isLigado);
        System.out.println("Velocidade: " + this.velocidade);
        System.out.println("Combustível: " + this.combustivel);
    }
}
