import java.io.PrintWriter;

public class Calculator {
    private static final char ADDITION = '+';
    private static final char SUBTRACTION = '-';
    private static final char MULTIPLICATION = '*';
    private static final char DIVISION = '/';

    public static float calculate(float firstOperand, float secondOperand, char operator) {
        switch (operator) {
            case ADDITION:
                return firstOperand + secondOperand;
            case SUBTRACTION:
                return firstOperand - secondOperand;
            case MULTIPLICATION:
                return firstOperand * secondOperand;
            case DIVISION:
                if (secondOperand !=0) return firstOperand /secondOperand;
                else throw new  RuntimeException("Can not divide by 0");
            default:
                throw  new RuntimeException("Unsupported operation");
        }
    }
}
