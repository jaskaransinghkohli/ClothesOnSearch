package com.T4a.ClothesOnSearch.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "customer_billing_status")
public class CustomerBillingSystem {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long customerBillId;
	@ManyToOne
	@JoinColumn(name = "customer_order_delivery_detail_id")
	private CustomerOrderDeliveryDetails CustomerOrderDeliveryDetailId;
	@ManyToOne
	@JoinColumn(name = "user_document_id")
	private UserDocument userDocumentId;

	public Long getCustomerBillId() {
		return customerBillId;
	}

	public void setCustomerBillId(Long customerBillId) {
		this.customerBillId = customerBillId;
	}

	public UserDocument getUserDocumentId() {
		return userDocumentId;
	}

	public void setUserDocumentId(UserDocument userDocumentId) {
		this.userDocumentId = userDocumentId;
	}

	public CustomerOrderDeliveryDetails getCustomerOrderDeliveryDetailId() {
		return CustomerOrderDeliveryDetailId;
	}

	public void setCustomerOrderDeliveryDetailId(CustomerOrderDeliveryDetails customerOrderDeliveryDetailId) {
		CustomerOrderDeliveryDetailId = customerOrderDeliveryDetailId;
	}

}
