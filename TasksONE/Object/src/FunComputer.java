public class FunComputer {
    String processor;
    String model;
    int memoriaRam;
    int storage;
    boolean pcIsGood;
    boolean pcUsed;

    void atributoComputer(String CPU, String modelo, int ram, int rom){
        processor = CPU;
        model = modelo;
        memoriaRam = ram;
        storage = rom;
    }
    String modelComputer(){
        return model;
    }
    boolean computerIsGood(){
        return pcIsGood;
    }


}
