package com.T4a.ClothesOnSearch.beans;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "customer_details")
public class CustomerDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long customerId;
	@Column(name = "customer_name")
	private String customerName;
	@Column(name = "customer_mobile_number")
	private Long customeMobileNumber;
	@Column(name = "customer_email")

	private String customerEmail;
	@Column(name = "customer_password")
	private String customerPassword;
	@Column(name = "created_on")
	private LocalDateTime creationDate;

	public Long getCustomerId() {
		return customerId;
	}

	public void setCustomerId(Long customerId) {
		this.customerId = customerId;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public Long getCustomeMobileNumber() {
		return customeMobileNumber;
	}

	public void setCustomeMobileNumber(Long customeMobileNumber) {
		this.customeMobileNumber = customeMobileNumber;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getCustomerPassword() {
		return customerPassword;
	}

	public void setCustomerPassword(String customerPassword) {
		this.customerPassword = customerPassword;
	}

	public LocalDateTime getCreationDate() {
		return creationDate;
	}

	public void setCreationDate(LocalDateTime creationDate) {
		this.creationDate = creationDate;
	}

}
