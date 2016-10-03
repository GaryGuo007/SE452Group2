package edu.depaul.se.worker;

public interface IWorkerService {

	void saveWorker( IWorker worker);
	public IWorker getWorker(String name);
}
