package com.T4a.ClothesOnSearch.Services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.T4a.ClothesOnSearch.Dao.ProductDao;
import com.T4a.ClothesOnSearch.beans.ProductCategory;
import com.T4a.ClothesOnSearch.beans.ProductSubCategory;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;


@Service
public class ProductServiceImpl implements ProductServices {
	@Autowired
	ProductDao productDao;

	@Override
	public List<ProductCategory> getAllCategories() {
		// TODO Auto-generated method stub
		return productDao.getAllCategories();
	}

	@Override
	public ProductSubCategory getProductSubCategoryById(Long parseInt) {
		// TODO Auto-generated method stub
		return productDao.getProductSubCategoryById(parseInt);
	}

	@Override
	public boolean saveOrUpdateUserSellingCategory(UserSellingCategory sellingCategory) {
		return productDao.saveOrUpdateUserSellingCategory(sellingCategory);
	}

}
