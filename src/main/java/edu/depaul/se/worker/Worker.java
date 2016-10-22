package edu.depaul.se.worker;

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
		return lastName;
	}
	public void setLastName(String name) {
		this.lastName = name;
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
	
	public void setCost(String cost){
		System.out.println("in setCost looking at " + cost);
		try {
			Long l = Long.decode(cost);
		    setCost(l);
		} catch (NumberFormatException ne ){ ne.printStackTrace();}
	}
	public void setCost(Long cost){
		System.out.println("in set cost long with " + cost);
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
	
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append(this.firstName ).append(", ");
		sb.append(this.lastName ).append(", ");
		sb.append(this.city ).append(", ");
		sb.append(this.state ).append(", ");
		sb.append(this.zip ).append(", ");
		sb.append(this.email ).append(", ");
		sb.append(this.phone ).append(", ");
		sb.append(this.skill ).append(", ");
		sb.append(this.cost ).append(", ");
		sb.append(this.password );
		return sb.toString();
	}
	
}
