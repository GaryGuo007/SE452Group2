package edu.depaul.se.worker.jpa;

import java.io.Serializable;
import edu.depaul.se.worker.*;
import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

@Entity
public class Worker implements Serializable, IWorker{
 
	@Id
    @GeneratedValue(generator = "uuid")
	@GenericGenerator(name = "uuid", strategy = "uuid2")
    private String id;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	//First Name
	private String firstName;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String name) {
		this.firstName = name;
	}
	
	//Last Name
	private String lastName;
	
	public String getLastName() {
		return firstName;
	}
	public void setLastName(String name) {
		this.firstName = name;
	}
	
	
	//City
	private String city;
	
	public String getcity(){
		return city;
	}
	
	public void setCity(String city){
		this.city = city;
	}
	
	//State 
	private String state;
	
	public String getState(){
		return state;
	}
	
	public void setState(String state){
		this.state= state;
	}
	
	//ZipCode
	private String zip;
	
	public String getZip(){
		return zip;
	}
	
	public void setZip(String zip){
		this.zip = zip;
	}

	
	//Email
	private String email;
	
	public String getEmail(){
		return email;
	}
	
	public void setEmail(String email){
		this.email = email;
	}
	
	//Phone
	private String phone;
	
	public String getPhone(){
		return phone;
	}
	
	public void setPhone(String phone){
		this.phone = phone;
	}
	
	//Skill
	private String skill;
	
	public String getSkill(){
		return skill;
	}
	
	public void setSkill(String skill){
		this.skill = skill;
	}
	
	//Cost
	private double cost;
	
	public double getCost(){
		return cost;
	}
	
	public void setCost(Long cost){
		this.cost = cost;
	}
	
	//password
	private String password;
	
	public String getPassword(){
		return password;
	}
	
	public void setPassword(String password){
		this.password = password;
	}
		
	
	
	//Customer Constructor
	public Worker() {
		
	}
	public Worker(String fName, String lName,String city, String state, String zip, String email, String phone, String skill, double cost, String password) {
		this.firstName = fName;
		this.lastName = lName;
		this.city = city;
		this.state = state;
		this.zip = zip;
		this.email = email;
		this.phone = phone;
		this.skill = skill;
		this.cost = cost;
		this.password = password;
	}
	
}
