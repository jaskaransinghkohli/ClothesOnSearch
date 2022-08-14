package com.T4a.ClothesOnSearch.beans;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer_order")
public class CustomerOrder {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long customerOrderId;
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private CustomerDetails customerId;
	@ManyToOne
	@JoinColumn(name = "user_product_id")
	private UserProducts userProductId;
	@Column(name = "customer_product_quantity")
	private Integer customerProductQuantity;
	@Column(name = "customer_product_colour")
	private String customerProductColour;
	@Column(name = "customer_product_size")
	private String customerProductSize;
	@Column(name = "customer_product_booking_date")
	private LocalDateTime customerProductBookingDate;

	public Integer getCustomerProductQuantity() {
		return customerProductQuantity;
	}

	public void setCustomerProductQuantity(Integer customerProductQuantity) {
		this.customerProductQuantity = customerProductQuantity;
	}

	public String getCustomerProductColour() {
		return customerProductColour;
	}

	public void setCustomerProductColour(String customerProductColour) {
		this.customerProductColour = customerProductColour;
	}

	public String getCustomerProductSize() {
		return customerProductSize;
	}

	public void setCustomerProductSize(String customerProductSize) {
		this.customerProductSize = customerProductSize;
	}

	public LocalDateTime getCustomerProductBookingDate() {
		return customerProductBookingDate;
	}

	public void setCustomerProductBookingDate(LocalDateTime customerProductBookingDate) {
		this.customerProductBookingDate = customerProductBookingDate;
	}

	public Long getCustomerOrderId() {
		return customerOrderId;
	}

	public void setCustomerOrderId(Long customerOrderId) {
		this.customerOrderId = customerOrderId;
	}

	public UserProducts getUserProductId() {
		return userProductId;
	}

	public void setUserProductId(UserProducts userProductId) {
		this.userProductId = userProductId;
	}

	public CustomerDetails getCustomerId() {
		return customerId;
	}

	public void setCustomerId(CustomerDetails customerId) {
		this.customerId = customerId;
	}

}
