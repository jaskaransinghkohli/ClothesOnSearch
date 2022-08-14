package com.T4a.ClothesOnSearch.beans;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class UserAddress {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userAddressId;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Users userId;
	@Column(name="user_address_line_1")
	private String userAddressLine1;
	@Column(name="user_address_line_2")
	private String userAddressLine2;
	@ManyToOne
	@JoinColumn(name="user_city")
	private City userCity;
	@Column(name="user_pin_code")
	private Integer userPinCode;

	public City getUserCity() {
		return userCity;
	}

	public void setUserCity(City userCity) {
		this.userCity = userCity;
	}

	public Integer getUserPinCode() {
		return userPinCode;
	}

	public void setUserPinCode(Integer userPinCode) {
		this.userPinCode = userPinCode;
	}

	public Long getUserAddressId() {
		return userAddressId;
	}

	public void setUserAddressId(Long userAddressId) {
		this.userAddressId = userAddressId;
	}

	public Users getUserId() {
		return userId;
	}

	public void setUserId(Users userId) {
		this.userId = userId;
	}

	public String getUserAddressLine1() {
		return userAddressLine1;
	}

	public void setUserAddressLine1(String userAddressLine1) {
		this.userAddressLine1 = userAddressLine1;
	}

	public String getUserAddressLine2() {
		return userAddressLine2;
	}

	public void setUserAddressLine2(String userAddressLine2) {
		this.userAddressLine2 = userAddressLine2;
	}

}
