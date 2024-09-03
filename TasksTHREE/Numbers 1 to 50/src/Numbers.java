public class Numbers {
    public static void main(String[] args) {
        // 1 to 50 with for
        System.out.print("1 to 50 with for:\n");
        for (int i = 1; i < 51; i++){
            System.out.print(i+" ");
            if (i == 27){
                System.out.print("\n");
            }
        }
        System.out.print("\n\n-----------------------------------------------------------------------------\n\n");
        // 1 to 50 with while
        System.out.print("1 to 50 with while:\n");
        int contador = 1;
        while (contador < 51){
            System.out.print(contador+" ");
            if (contador == 27){
                System.out.print("\n");
            }
            contador ++;
        }

    }
}