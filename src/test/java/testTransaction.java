

import edu.depaul.se.transaction.jpa.*;

public class testTransaction {
	public static void main(String[] args) {
		TransactionService service = new TransactionService();
		service.saveTransaction(new Transaction("ecec230f-2bb1-4476-ab8c-26d3601b8756","John","Smith","Lorem ipsum dolor sit amet, sit ea facete persius reprehendunt. Ut legimus molestiae qui. Id vix gubergren tincidunt, ad eirmod omittam quo, te oratio audiam ius. Ei mutat nominavi expetendis eos, et dicat incorrupte vix. Ne eam sumo intellegebat, autem lobortis adversarium in vim. Sea facer omittantur instructior id. Vel ne dicant appetere placerat."));
		service.saveTransaction(new Transaction("ecec230f-2bb1-4476-ab8c-26d3601b8756","David","Webster","Lorem ipsum dolor sit amet, sit ea facete persius reprehendunt. Ut legimus molestiae qui. Id vix gubergren tincidunt, ad eirmod omittam quo, te oratio audiam ius. Ei mutat nominavi expetendis eos, et dicat incorrupte vix. Ne eam sumo intellegebat, autem lobortis adversarium in vim. Sea facer omittantur instructior id. Vel ne dicant appetere placerat."));
		service.saveTransaction(new Transaction("ecec230f-2bb1-4476-ab8c-26d3601b8756","Maclom","Dowell","Lorem ipsum dolor sit amet, sit ea facete persius reprehendunt. Ut legimus molestiae qui. Id vix gubergren tincidunt, ad eirmod omittam quo, te oratio audiam ius. Ei mutat nominavi expetendis eos, et dicat incorrupte vix. Ne eam sumo intellegebat, autem lobortis adversarium in vim. Sea facer omittantur instructior id. Vel ne dicant appetere placerat."));
		service.saveTransaction(new Transaction("ecec230f-2bb1-4476-ab8c-26d3601b8756","Lauren","Smith","Lorem ipsum dolor sit amet, sit ea facete persius reprehendunt. Ut legimus molestiae qui. Id vix gubergren tincidunt, ad eirmod omittam quo, te oratio audiam ius. Ei mutat nominavi expetendis eos, et dicat incorrupte vix. Ne eam sumo intellegebat, autem lobortis adversarium in vim. Sea facer omittantur instructior id. Vel ne dicant appetere placerat."));

	}

}
