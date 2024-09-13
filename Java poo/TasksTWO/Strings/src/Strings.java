import java.util.Scanner;


public class Strings {
    public static void main(String[] args) {
        Scanner ler = new Scanner(System.in);
        FunStrings text = new FunStrings();

        String palavra;
        System.out.print("Digite uma palavra: ");
        palavra = ler.nextLine();


        System.out.print("\nA palavra '"+palavra+"' em maiúsculo fica: "+text.maisculo(palavra));
        System.out.print("\nA palavra '"+palavra+"' tem "+text.quantLetras(palavra)+" letra(as)");
        System.out.print("\nA palavra '"+palavra+"' tem "+text.quantVogais(palavra)+" vogal(ais)\n");
        text.checkUNI_RIO(palavra);
    }
}