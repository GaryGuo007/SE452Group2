
import edu.depaul.se.worker.jpa.*;
import edu.depaul.se.worker.*;

public class testWorker {

	public static void main(String[] args) {
		WorkerService service = new WorkerService();
		service.saveWorker(new Worker("Fred", "Damon", "Chicago", "IL", "60604", "work1@email.com", "333-111-2222",
				"Plumber", 99.99, "work123"));
		service.saveWorker(new Worker("Dave", "Miller", "Chicago", "IL", "60604", "work2@email.com", "333-111-2223",
				"General Contractor", 50.00, "work456"));

	}
}
