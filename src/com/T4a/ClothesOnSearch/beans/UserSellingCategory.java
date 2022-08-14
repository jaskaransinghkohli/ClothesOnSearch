package com.T4a.ClothesOnSearch.beans;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "user_selling_category")
public class UserSellingCategory {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long userSellingProductId;
	@ManyToOne
	@JoinColumn(name = "user_id")
	private Users userId;
	@ManyToOne
	@JoinColumn(name = "sub_category_id")
	private ProductSubCategory subCategoryId;

	public Long getUserSellingProductId() {
		return userSellingProductId;
	}

	public void setUserSellingProductId(Long userSellingProductId) {
		this.userSellingProductId = userSellingProductId;
	}

	public Users getUserId() {
		return userId;
	}

	public void setUserId(Users userId) {
		this.userId = userId;
	}

	public ProductSubCategory getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(ProductSubCategory subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

}
