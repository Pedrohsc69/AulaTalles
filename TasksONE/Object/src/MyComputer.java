public class MyComputer {
    public static void main(String[] args) {
        FunComputer computer = new FunComputer();

        computer.atributoComputer("AMD Ryzen 9 5900XT","Dell Alienware m16 R2",32,1000);

        computer.turnOn();
        computer.openProgram("Google Chrome");
        computer.closeProgram("Google Chrome");
        computer.informationComputer();
        computer.turnOff();
    }
}