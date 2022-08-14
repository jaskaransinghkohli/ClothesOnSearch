package com.T4a.ClothesOnSearch.beans;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "users")
public class Users {

	public static final int Super_Admin = 1;
	public static final int Admin = 2;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userId;
	@Column(name = "user_role")
	private int userRole;
	@Column(name = "seller_name")
	private String sellerName;
	private String userPassword;
	@Column(name = "company_name")
	private String companyName;
	@Column(name = "store_name")
	private String storeName;
	@Column(name = "production_type")
	private String productionType;
	@Column(name = "user_email")
	private String userEmail;
	@Column(name = "user_mobile_number")
	private Long mobileNumber;
	@Column(name = "website_url")
	private String websiteUrl;
	@Column(name = "annual_income")
	private String annualIncome;
	@Column(name = "number_of_sales")
	private String numberOfSales;
	@Column(name = "user_creation_date")
	private LocalDateTime userCreationDate;

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public LocalDateTime getUserCreationDate() {
		return userCreationDate;
	}

	public void setUserCreationDate(LocalDateTime userCreationDate) {
		this.userCreationDate = userCreationDate;
	}

	public String getSellerName() {
		return sellerName;
	}

	public void setSellerName(String sellerName) {
		this.sellerName = sellerName;
	}

	public String getCompanyName() {
		return companyName;
	}

	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getProductionType() {
		return productionType;
	}

	public void setProductionType(String productionType) {
		this.productionType = productionType;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public Long getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(Long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getAnnualIncome() {
		return annualIncome;
	}

	public void setAnnualIncome(String annualIncome) {
		this.annualIncome = annualIncome;
	}

	public String getNumberOfSales() {
		return numberOfSales;
	}

	public void setNumberOfSales(String numberOfSales) {
		this.numberOfSales = numberOfSales;
	}

	public int getUserRole() {
		return userRole;
	}

	public void setUserRole(int userRole) {
		this.userRole = userRole;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}

}
