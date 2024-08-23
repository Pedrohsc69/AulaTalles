public class FunComputer {
    String processor;
    String model;
    int memoriaRam;
    int storage;
    boolean ligado;

    void atributoComputer(String CPU, String modelo, int ram, int rom){
        processor = CPU;
        model = modelo;
        memoriaRam = ram;
        storage = rom;
    }
    public void turnOn() {
        this.ligado = true;
        System.out.println("O notebook está ligado.");
    }
    public void turnOff() {
        this.ligado = false;
        System.out.println("O notebook está desligado.");
    }

    public void openProgram(String programa) {
        if (this.ligado) {
            System.out.println("Abrindo o programa: " + programa);
        } else {
            System.out.println("Você precisa ligar o notebook primeiro.");
        }
    }

    public void closeProgram(String programa) {
        if (this.ligado) {
            System.out.println("Fechando o programa: " + programa);
        } else {
            System.out.println("Você precisa ligar o notebook primeiro.");
        }
    }
    void informationComputer(){
        System.out.println("Modelo: "+ model);
        System.out.println("Processador: "+ processor);
        System.out.println("Memória RAM: "+ memoriaRam);
        System.out.println("Armazenamento interno: "+ storage);
    }


}
