package com.T4a.ClothesOnSearch.Dao;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.UserAddress;
import com.T4a.ClothesOnSearch.beans.UserBankAndTaxDetails;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;
import com.T4a.ClothesOnSearch.beans.Users;

@Repository
@Transactional
public class RegistrationDaoImpl implements RegistrationDao {
	@Autowired
	SessionFactory factory;

	@Override
	public boolean registerCustomer(CustomerDetails customerDetails) {
		boolean status = false;
		factory.getCurrentSession().saveOrUpdate(customerDetails);
		status = true;
		return status;
	}

	@Override
	public boolean registerSeller(Users user) {
		boolean status = false;
		factory.getCurrentSession().saveOrUpdate(user);
		status = true;

		return status;
	}

	@Override
	public boolean saveBusinnessDetails(UserAddress userAddress) {
		boolean status = false;
		factory.getCurrentSession().saveOrUpdate(userAddress);
		status = true;
		return status;

	}

	@Override
	public boolean saveTaxDetails(UserBankAndTaxDetails taxDetails) {
		boolean status = false;

		factory.getCurrentSession().saveOrUpdate(taxDetails);
		status = true;
		return status;
	}

	@Override
	public boolean saveCategories(UserSellingCategory categories) {
		boolean status = false;
		factory.getCurrentSession().saveOrUpdate(categories);
		status = true;

		return status;
	}

}
