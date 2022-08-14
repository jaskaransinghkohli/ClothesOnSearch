package com.T4a.ClothesOnSearch.Services;

import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.Users;

public interface AdminServices {


	Users userLogin(String userEmail, String userPassword);

	CustomerDetails customerLogin(String customerEmail, String customerPassword);

}
