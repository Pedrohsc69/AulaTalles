import java.util.Scanner;

public class Calculator {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        FunCalculator cal = new FunCalculator();

        double numUM;
        double numDOIS;
        int opc;
        do {
            System.out.print("------------------");
            System.out.println("\n1 - Somar");
            System.out.println("2 - Subtrair");
            System.out.println("3 - Multiplicar");
            System.out.println("4 - Dividir");
            System.out.println("5 - Sair");
            System.out.println("------------------");
            System.out.print("Escolha uma opção: ");
            opc = ler.nextInt();

            switch (opc){
                case 1: /* SOMA */
                    System.out.println("------------------");
                    System.out.print("Digite um valor: ");
                    numUM = ler.nextDouble();

                    System.out.print("Digite outro valor: ");
                    numDOIS = ler.nextDouble();

                    double resultSoma = cal.somar(numUM,numDOIS);
                    System.out.print(numUM+" + "+numDOIS+" = "+resultSoma+"\n");
                    break;

                case 2: /* SUBTRAÇÃO */
                    System.out.println("------------------");
                    System.out.print("Digite um valor: ");
                    numUM = ler.nextDouble();

                    System.out.print("Digite outro valor: ");
                    numDOIS = ler.nextDouble();

                    double resultSub = cal.subtrair(numUM,numDOIS);
                    System.out.print(numUM+" - "+numDOIS+" = "+resultSub+"\n");
                    break;

                case 3: /* MULTIPLICAÇÃO */
                    System.out.println("------------------");
                    System.out.print("Digite um valor: ");
                    numUM = ler.nextDouble();

                    System.out.print("Digite outro valor: ");
                    numDOIS = ler.nextDouble();

                    double resultMulti = cal.multi(numUM,numDOIS);
                    System.out.print(numUM+" * "+numDOIS+" = "+resultMulti+"\n");
                    break;

                case 4: /* DIVISÃO */
                    System.out.println("------------------");
                    System.out.print("Digite um valor: ");
                    numUM = ler.nextDouble();

                    System.out.print("Digite outro valor: ");
                    numDOIS = ler.nextDouble();

                    double resultDiv = cal.division(numUM,numDOIS);
                    System.out.print(numUM+" / "+numDOIS+" = "+resultDiv+"\n");
                    break;

            }
        } while (opc != 5);
    }
}
