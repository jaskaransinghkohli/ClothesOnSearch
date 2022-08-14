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
@Table(name = "user_bank_and_tax_details")
public class UserBankAndTaxDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userBankAndTaxDetailsId;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Users userId;
	@Column(name = "user_bank_ifsc")
	private String userBankIfsc;
	@Column(name = "user_bank_name")
	private String userBankName;
	@Column(name = "user_account_holder_name")
	private String userAccountHolderName;
	@Column(name = "user_account_type")
	private String userAccountType;
	@Column(name = "user_account_number")
	private String userAccountNumber;
	@Column(name = "user_gst_number")
	private String userGstNumber;
	@Column(name = "user_pan_number")
	private String userPanNumber;
	@Column(name = "user_gst_tax_ptc")
	private String userGstTaxPtc;

	public Users getUserId() {
		return userId;
	}

	public void setUserId(Users userId) {
		this.userId = userId;
	}

	public Long getUserBankAndTaxDetailsId() {
		return userBankAndTaxDetailsId;
	}

	public void setUserBankAndTaxDetailsId(Long userBankAndTaxDetailsId) {
		this.userBankAndTaxDetailsId = userBankAndTaxDetailsId;
	}

	public String getUserBankIfsc() {
		return userBankIfsc;
	}

	public void setUserBankIfsc(String userBankIfsc) {
		this.userBankIfsc = userBankIfsc;
	}

	public String getUserBankName() {
		return userBankName;
	}

	public void setUserBankName(String userBankName) {
		this.userBankName = userBankName;
	}

	public String getUserAccountHolderName() {
		return userAccountHolderName;
	}

	public void setUserAccountHolderName(String userAccountHolderName) {
		this.userAccountHolderName = userAccountHolderName;
	}

	public String getUserAccountType() {
		return userAccountType;
	}

	public void setUserAccountType(String userAccountType) {
		this.userAccountType = userAccountType;
	}

	public String getUserAccountNumber() {
		return userAccountNumber;
	}

	public void setUserAccountNumber(String userAccountNumber) {
		this.userAccountNumber = userAccountNumber;
	}

	public String getUserGstNumber() {
		return userGstNumber;
	}

	public void setUserGstNumber(String userGstNumber) {
		this.userGstNumber = userGstNumber;
	}

	public String getUserPanNumber() {
		return userPanNumber;
	}

	public void setUserPanNumber(String userPanNumber) {
		this.userPanNumber = userPanNumber;
	}

	public String getUserGstTaxPtc() {
		return userGstTaxPtc;
	}

	public void setUserGstTaxPtc(String userGstTaxPtc) {
		this.userGstTaxPtc = userGstTaxPtc;
	}

}
