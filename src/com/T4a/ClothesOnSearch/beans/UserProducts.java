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
@Table(name = "userproducts")
public class UserProducts {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userProductId;
	@ManyToOne
	@JoinColumn(name = "user_selling_product_id")
	private UserSellingCategory userSellingProductId;
	@Column(name = "user_products")
	private String userProducts;
	@Column(name = "product_name")
	private String productName;
	@Column(name = "product_cost")
	private String productCost;
	@Column(name = "product_creation_date")
	private LocalDateTime productCreaionDate;
	@Column(name = "product_active_status")
	private Integer productActiveStatus;
	@Column(name = "product_colour")
	private String productColour;
	@Column(name = "product_size")
	private String productSize;
	@Column(name = "product_quantity")
	private Integer productQuantity;

	public Long getUserProductId() {
		return userProductId;
	}

	public void setUserProductId(Long userProductId) {
		this.userProductId = userProductId;
	}

	public String getUserProducts() {
		return userProducts;
	}

	public void setUserProducts(String userProducts) {
		this.userProducts = userProducts;
	}

	public UserSellingCategory getUserSellingProductId() {
		return userSellingProductId;
	}

	public void setUserSellingProductId(UserSellingCategory userSellingProductId) {
		this.userSellingProductId = userSellingProductId;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductCost() {
		return productCost;
	}

	public void setProductCost(String productCost) {
		this.productCost = productCost;
	}

	public LocalDateTime getProductCreaionDate() {
		return productCreaionDate;
	}

	public void setProductCreaionDate(LocalDateTime productCreaionDate) {
		this.productCreaionDate = productCreaionDate;
	}

	public Integer getProductActiveStatus() {
		return productActiveStatus;
	}

	public void setProductActiveStatus(Integer productActiveStatus) {
		this.productActiveStatus = productActiveStatus;
	}

	public String getProductColour() {
		return productColour;
	}

	public void setProductColour(String productColour) {
		this.productColour = productColour;
	}

	public String getProductSize() {
		return productSize;
	}

	public void setProductSize(String productSize) {
		this.productSize = productSize;
	}

	public Integer getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(Integer productQuantity) {
		this.productQuantity = productQuantity;
	}

}
