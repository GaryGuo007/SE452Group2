package edu.depaul.se;

public class Search {
	private String profession;
	private String zipcode;
	private String City;
	private String State;
	private double cost;
	
	public String getProfession() {
		return profession;
	}
	public void setProfession(String profession) {
		this.profession = profession;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getCity() {
		return City;
	}
	public void setCity(String city) {
		City = city;
	}
	
	public String getState() {
		return State;
	}
	public void setState(String state) {
		State = state;
	}
	
	public void setCost(double cost) {
		this.cost = cost;
	}
	public double getCost(){
		return cost;
	}
	

}
