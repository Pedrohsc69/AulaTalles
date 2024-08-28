import java.util.Scanner;

public class XandY {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        int x, y;

        System.out.print("Digite um número: ");
        x = ler.nextInt();
        System.out.print("Digite outro número: ");
        y = ler.nextInt();

        if (x > y){
            System.out.print(x+" é maior que "+y);
        }
        if (y > x){
            System.out.print(y+" é maior que "+x);
        } else {
            System.out.print("Os números são iguais");
        }

    }
}