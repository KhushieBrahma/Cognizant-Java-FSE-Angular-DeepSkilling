public class FinancialForecast {
    // Recursive method
    public static double predictFutureValue(double currentValue, double growthRate, int years) {
        if (years == 0) {   // Base Case
            return currentValue;
        }

        // Recursive Case
        return predictFutureValue(currentValue * (1 + growthRate), growthRate, years - 1);
    }
}
