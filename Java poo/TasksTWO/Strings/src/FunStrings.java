public class FunStrings {
    public String maisculo(String text){
        return text.toUpperCase();
    }

    public int quantLetras(String text){
        return text.length();
    }
    public int quantVogais(String text){
        int contarVogais = 0;

        text.toLowerCase();

        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            if (c == 'a' || c == 'e' || c == 'i' || c == 'o' || c == 'u')
                contarVogais++;
        }

        return contarVogais;
    }

    void checkUNI_RIO(String text){
        if (text.toLowerCase().startsWith("uni")) {
            System.out.println("A string começa com 'UNI'");
        } else {
            System.out.println("A string não começa com 'UNI'");
        }

        if (text.toLowerCase().endsWith("rio")) {
            System.out.println("A string termina com 'RIO'");
        } else {
            System.out.println("A string não termina com 'RIO'");
        }
    }
}
