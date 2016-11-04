package edu.depaul.se.worker;

import java.util.List;

public interface IWorkerService {

	void saveWorker(IWorker worker);

	public IWorker getWorker(String name);

	public IWorker getWorkerById(String id);

	public List<Worker> getWorkerByProfession(String profession);

}
