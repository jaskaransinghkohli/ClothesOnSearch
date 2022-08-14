package com.T4a.ClothesOnSearch.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer_address")
public class CustomerAddress {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long customerAddressId;
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private CustomerDetails customerId;
	@ManyToOne
	@JoinColumn(name = "customer_city")
	private City customerCity;
	@Column(name = "customer_address")
	private String customerAddress;
	@Column(name = "customer_pin_code")
	private String customerPinCode;

	public Long getCustomerAddressId() {
		return customerAddressId;
	}

	public void setCustomerAddressId(Long customerAddressId) {
		this.customerAddressId = customerAddressId;
	}

	public CustomerDetails getCustomerId() {
		return customerId;
	}

	public void setCustomerId(CustomerDetails customerId) {
		this.customerId = customerId;
	}

	public City getCustomerCity() {
		return customerCity;
	}

	public void setCustomerCity(City customerCity) {
		this.customerCity = customerCity;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getCustomerPinCode() {
		return customerPinCode;
	}

	public void setCustomerPinCode(String customerPinCode) {
		this.customerPinCode = customerPinCode;
	}

}
