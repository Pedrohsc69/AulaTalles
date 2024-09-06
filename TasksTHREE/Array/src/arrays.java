import java.util.ArrayList;

public class arrays {
    public static void main(String[] args) {
        int[] numeros = {10, 20, 30, 40, 50, 60, 70, 80, 90, 100};
        for (int i = 3; i <= 9; i++) {
            System.out.print(numeros[i] + " ");
        }

        System.out.print("\n----------------------------------------------\n");

        ArrayList<String> nomes = new ArrayList<>();
        nomes.add("Ana");
        nomes.add("Bruno");
        nomes.add("Carlos");
        nomes.add("Diana");
        nomes.add("Eduardo");


        nomes.remove(1);


        System.out.println("Após remover o segundo nome: " + nomes);


        nomes.remove(2);


        System.out.println("Após remover o terceiro nome: " + nomes);


        if (nomes.get(0).equals("Talles")) {
            System.out.println("O primeiro nome é Talles.");
        } else {
            System.out.println("O primeiro nome não é Talles.");
        }

    }
}