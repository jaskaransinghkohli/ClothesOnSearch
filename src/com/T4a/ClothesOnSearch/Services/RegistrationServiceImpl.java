package com.T4a.ClothesOnSearch.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.T4a.ClothesOnSearch.Dao.RegistrationDao;
import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.UserAddress;
import com.T4a.ClothesOnSearch.beans.UserBankAndTaxDetails;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;
import com.T4a.ClothesOnSearch.beans.Users;

@Service
public class RegistrationServiceImpl implements RegistrationServices {
	@Autowired
	RegistrationDao registrationdao;

	@Override
	public boolean registerCustomer(CustomerDetails customerDetails) {
		return registrationdao.registerCustomer(customerDetails);
	}

	@Override
	public boolean registerSeller(Users user) {
		return registrationdao.registerSeller(user);
	}

	@Override
	public boolean saveBusinnessDetails(UserAddress userAddress) {
		return registrationdao.saveBusinnessDetails(userAddress);
	}

	@Override
	public boolean saveTaxDetails(UserBankAndTaxDetails taxDetails) {
		return registrationdao.saveTaxDetails(taxDetails);
	}

	@Override
	public boolean saveCategories(UserSellingCategory categories) {
		return registrationdao.saveCategories(categories);
	}

}
