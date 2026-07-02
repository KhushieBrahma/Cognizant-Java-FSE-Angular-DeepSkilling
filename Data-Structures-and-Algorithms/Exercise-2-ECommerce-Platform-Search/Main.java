import java.util.Arrays;
import java.util.Comparator;

public class Main {
    public static void main(String[] args) {
        Product[] products = {

                new Product(101, "Laptop", "Electronics"),
                new Product(102, "Shoes", "Fashion"),
                new Product(103, "Phone", "Electronics"),
                new Product(104, "Watch", "Accessories"),
                new Product(105, "Bag", "Fashion")

        };

        // Linear Search
        System.out.println("Linear Search:");

        Product result1 = SearchService.linearSearch(products, "Phone");

        if(result1 != null)
            System.out.println(result1);
        else
            System.out.println("Product not found.");


        Arrays.sort(products, Comparator.comparing(Product::getProductName));

        System.out.println("\nBinary Search:");

        Product result2 = SearchService.binarySearch(products, "Phone");

        if(result2 != null)
            System.out.println(result2);
        else
            System.out.println("Product not found.");

    }
}
