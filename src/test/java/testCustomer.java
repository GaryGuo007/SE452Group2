import edu.depaul.se.customer.ICustomer;
import edu.depaul.se.customer.jpa.Customer;
import edu.depaul.se.customer.jpa.CustomerService;

public class testCustomer {
	public static void main(String [] args){
		CustomerService service = new CustomerService();			
		service.saveCustomer(new Customer("John","Doe","1 Spruce Ln.","Chicago","IL","60604","test@gmail.com","a12345"));
		service.saveCustomer(new Customer("Jane","Doe","1 Spruce Ln.","Chicago","IL","60604","test2@gmail.com","b12345"));

		
	}
}
