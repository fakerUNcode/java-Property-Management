package com.room.dao;

import java.util.List;

import com.room.bean.Admin;

public interface IAdminDao {
	List<Admin> getAllAdmin();
	void save(Admin a); 
	
	Admin getAdminById(String id);
	Admin getAdminBynp(String name,String password);
	void update(Admin a);
	
	void delete(String id);
	
}	
