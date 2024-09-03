public class ImpaPar {
    public static void main(String[] args) {
        // number pair with for
        System.out.print("NÚMEROS PARES DO 1 AO 50 COM FOR:\n");
        for (int i = 1; i < 51; i++){
            if (i % 2 == 0){
                System.out.print("O número "+i+" é par\n");
            }
        }

        System.out.print("\n----------------------------\n\n");

        // number odd with while
        System.out.print("NÚMEROS PARES DO 1 AO 50 COM WHILE:\n");
        int contador = 1;
        while (contador < 51){
            if (contador % 2 == 0){
                System.out.print("O número "+contador+" é par\n");
            }
            contador ++;
        }
    }
}