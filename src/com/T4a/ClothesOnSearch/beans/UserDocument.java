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
@Table(name="user_documents")
public class UserDocument {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long userDocumentId;
	@ManyToOne
	@JoinColumn(name="user_id")
	private Users userId;
	@Column(name="user_signature_path")
	private String userSignature;
    
	public Users getUserId() {
		return userId;
	}

	public void setUserId(Users userId) {
		this.userId = userId;
	}

	public Long getUserDocumentId() {
		return userDocumentId;
	}

	public void setUserDocumentId(Long userDocumentId) {
		this.userDocumentId = userDocumentId;
	}

	public String getUserSignature() {
		return userSignature;
	}

	public void setUserSignature(String userSignature) {
		this.userSignature = userSignature;
	}

}
