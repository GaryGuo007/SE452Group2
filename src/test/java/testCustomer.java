import edu.depaul.se.customer.jpa.Customer;
import edu.depaul.se.customer.jpa.CustomerService;

public class testCustomer {
	public static void main(String [] args){
		CustomerService service = new CustomerService();
		service.getCustomer("Cust1");
		service.saveCustomer(new Customer("Cust1"));
		service.saveCustomer(new Customer("Cust2"));
		service.saveCustomer(new Customer("Cust1"));
		service.saveCustomer(new Customer("Cust2"));
		
	}
}
