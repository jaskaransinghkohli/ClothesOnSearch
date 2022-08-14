package com.T4a.ClothesOnSearch.Dao;

import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.UserAddress;
import com.T4a.ClothesOnSearch.beans.UserBankAndTaxDetails;
import com.T4a.ClothesOnSearch.beans.UserSellingCategory;
import com.T4a.ClothesOnSearch.beans.Users;

public interface RegistrationDao {

	boolean registerCustomer(CustomerDetails customerDetails);

	boolean registerSeller(Users user);

	boolean saveBusinnessDetails(UserAddress userAddress);

	boolean saveTaxDetails(UserBankAndTaxDetails taxDetails);

	boolean saveCategories(UserSellingCategory categories);

}
