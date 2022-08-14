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
@Table(name = "cart")
public class Cart {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long cartId;
	@ManyToOne
	@JoinColumn(name = "customer_order_id")
	private CustomerOrder customerOrderId;
	@Column(name = "cart_status")
	private Integer cartStatus;
	@Column(name = "cart_creation_date")
	private LocalDateTime cartCreationDate;

	public Long getCartId() {
		return cartId;
	}

	public void setCartId(Long cartId) {
		this.cartId = cartId;
	}

	public CustomerOrder getCustomerOrderId() {
		return customerOrderId;
	}

	public void setCustomerOrderId(CustomerOrder customerOrderId) {
		this.customerOrderId = customerOrderId;
	}

	public Integer getCartStatus() {
		return cartStatus;
	}

	public void setCartStatus(Integer cartStatus) {
		this.cartStatus = cartStatus;
	}

	public LocalDateTime getCartCreationDate() {
		return cartCreationDate;
	}

	public void setCartCreationDate(LocalDateTime cartCreationDate) {
		this.cartCreationDate = cartCreationDate;
	}

}
