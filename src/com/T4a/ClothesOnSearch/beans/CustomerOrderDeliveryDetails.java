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
@Table(name = "customer_order_delivery_details")
public class CustomerOrderDeliveryDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long CustomerOrderDeliveryDetailId;
	@ManyToOne
	@JoinColumn(name = "customer_address_id")
	private CustomerAddress customerAddressId;
	@ManyToOne
	@JoinColumn(name = "customer_order_id")

	private CustomerOrder customerOrderId;
	@Column(name = "order_delivery_status")
	private Integer orderDeliveryStatus;
	@Column(name = "order_delivery_date")
	private LocalDateTime orderDeliveryDate;
	@Column(name = "order_delievered_date")
	private LocalDateTime orderDelieveredDate;

	public Integer getOrderDeliveryStatus() {
		return orderDeliveryStatus;
	}

	public void setOrderDeliveryStatus(Integer orderDeliveryStatus) {
		this.orderDeliveryStatus = orderDeliveryStatus;
	}

	public Long getCustomerOrderDeliveryDetailId() {
		return CustomerOrderDeliveryDetailId;
	}

	public void setCustomerOrderDeliveryDetailId(Long customerOrderDeliveryDetailId) {
		CustomerOrderDeliveryDetailId = customerOrderDeliveryDetailId;
	}

	public LocalDateTime getOrderDeliveryDate() {
		return orderDeliveryDate;
	}

	public void setOrderDeliveryDate(LocalDateTime orderDeliveryDate) {
		this.orderDeliveryDate = orderDeliveryDate;
	}

	public LocalDateTime getOrderDelieveredDate() {
		return orderDelieveredDate;
	}

	public void setOrderDelieveredDate(LocalDateTime orderDelieveredDate) {
		this.orderDelieveredDate = orderDelieveredDate;
	}

	public CustomerOrder getCustomerOrderId() {
		return customerOrderId;
	}

	public void setCustomerOrderId(CustomerOrder customerOrderId) {
		this.customerOrderId = customerOrderId;
	}

	public CustomerAddress getCustomerAddressId() {
		return customerAddressId;
	}

	public void setCustomerAddressId(CustomerAddress customerAddressId) {
		this.customerAddressId = customerAddressId;
	}

}
