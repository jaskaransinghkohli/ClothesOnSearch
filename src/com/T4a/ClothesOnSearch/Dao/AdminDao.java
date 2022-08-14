package com.T4a.ClothesOnSearch.Dao;

import com.T4a.ClothesOnSearch.beans.CustomerDetails;
import com.T4a.ClothesOnSearch.beans.Users;

public interface AdminDao {


	Users userLogin(String email_id, String password);

	CustomerDetails customerLogin(String customerEmail, String customerPassword);

}
