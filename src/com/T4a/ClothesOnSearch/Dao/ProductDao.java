package com.T4a.ClothesOnSearch.Dao;

import java.util.List;

import com.T4a.ClothesOnSearch.beans.ProductCategory;
import com.T4a.ClothesOnSearch.beans.ProductSubCategory;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;

public interface ProductDao {

	List<ProductCategory> getAllCategories();

	ProductSubCategory getProductSubCategoryById(Long parseInt);

	boolean saveOrUpdateUserSellingCategory(UserSellingCategory sellingCategory);

}
