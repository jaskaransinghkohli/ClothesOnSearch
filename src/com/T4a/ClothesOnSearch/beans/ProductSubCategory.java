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
@Table(name = "product_sub_category")
public class ProductSubCategory {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long subCategoryId;
	@ManyToOne
	@JoinColumn(name = "product_id")
	private ProductCategory productId;
	@Column(name = "sub_category_name")
	private String subCategoryName;

	public ProductCategory getProductId() {
		return productId;
	}

	public void setProductId(ProductCategory productId) {
		this.productId = productId;
	}

	public Long getSubCategoryId() {
		return subCategoryId;
	}

	public void setSubCategoryId(Long subCategoryId) {
		this.subCategoryId = subCategoryId;
	}

	public String getSubCategoryName() {
		return subCategoryName;
	}

	public void setSubCategoryName(String subCategoryName) {
		this.subCategoryName = subCategoryName;
	}

}
