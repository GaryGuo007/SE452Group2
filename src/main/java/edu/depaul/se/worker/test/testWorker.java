package edu.depaul.se.worker.test;

import edu.depaul.se.worker.jpa.*;


public class testWorker {

	public static void main(String [] args){
		WorkerService service = new WorkerService();
		service.saveWorker(new Worker("Fred"));
		service.saveWorker(new Worker("Barnet"));
		service.saveWorker(new Worker("Wilma"));
		service.saveWorker(new Worker("Betty"));
		
	}
}
