public class MyComputer {
    public static void main(String[] args) {
        FunComputer computer = new FunComputer();

        computer.atributoComputer("AMD Ryzen 9 5900XT","Dell gaming",32,1000);
        computer.computerIsGood();

        System.out.print(computer.modelComputer());
    }
}