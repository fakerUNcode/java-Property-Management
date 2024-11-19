package com.room.service;

import java.util.List;

import com.room.bean.Admin;
import com.room.bean.CustomAccount;



public interface IAdminService {
	List<Admin> findAlladmins();
	void save(Admin a );
	
	Admin findById(String id);
	Admin findBynp(String name,String password);
	
	void update(Admin a );
	void delete(String id);
	void addCustomAccount(CustomAccount account);
}
