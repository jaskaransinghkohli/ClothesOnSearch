package com.T4a.ClothesOnSearch.beans;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import javax.persistence.Table;

@Entity
@Table(name = "product_category")
public class ProductCategory {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long productCategoryId;
	@Column(name = "category_name")
	private String categoryName;
	@Column(name = "product_gender")
	private Integer productGender;
	@OneToMany(fetch = FetchType.EAGER, cascade = CascadeType.ALL, mappedBy = "productId")
	private Set<ProductSubCategory> subCategories = new HashSet<>();

	public Long getProductCategoryId() {
		return productCategoryId;
	}

	public void setProductCategoryId(Long productCategoryId) {
		this.productCategoryId = productCategoryId;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public Integer getProductGender() {
		return productGender;
	}

	public void setProductGender(Integer productGender) {
		this.productGender = productGender;
	}

	public Set<ProductSubCategory> getSubCategories() {
		return subCategories;
	}

	public void setSubCategories(Set<ProductSubCategory> subCategories) {
		this.subCategories = subCategories;
	}

}