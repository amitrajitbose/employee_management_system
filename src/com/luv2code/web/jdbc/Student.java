package com.luv2code.web.jdbc;

public class Student {

	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String designation;
	private String contact;

	public Student(String firstName, String lastName, String email, String designation, String contact) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.designation = designation;
		this.contact = contact;
	}

	public Student(int id, String firstName, String lastName, String email, String designation, String contact) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.designation = designation;
		this.contact = contact;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", email=" + email
				+ ", designation=" + designation + ", contact=" + contact + "]";
	}

		
}
