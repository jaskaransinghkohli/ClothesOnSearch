package com.T4a.ClothesOnSearch.Dao;

import java.util.List;

import javax.persistence.TypedQuery;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.T4a.ClothesOnSearch.beans.ProductCategory;
import com.T4a.ClothesOnSearch.beans.ProductSubCategory;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;

@Repository
@Transactional
public class ProductDaoImpl implements ProductDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public List<ProductCategory> getAllCategories() {
		List<ProductCategory> productCategory = null;
		try {

			TypedQuery<ProductCategory> query = sessionFactory.getCurrentSession().createQuery("from ProductCategory ",
					ProductCategory.class);
			productCategory = query.getResultList();
		} catch (Exception e) {
			System.out.println(e);
		}
		return productCategory;

	}

	@Override
	public ProductSubCategory getProductSubCategoryById(Long id) {
		return sessionFactory.getCurrentSession().get(ProductSubCategory.class, id);
	 }

	@Override
	public boolean saveOrUpdateUserSellingCategory(UserSellingCategory sellingCategory) {
		boolean status = false;
		sessionFactory.getCurrentSession().saveOrUpdate(sellingCategory);
		status = false;
		return status;
	}
}