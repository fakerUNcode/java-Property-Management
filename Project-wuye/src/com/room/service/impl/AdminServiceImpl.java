package com.room.service.impl;

import java.util.List;

import com.room.bean.Admin;
import com.room.bean.CustomAccount;
import com.room.dao.IAdminDao;
import com.room.dao.impl.AdminDaoImpl;
import com.room.service.IAdminService;

public class AdminServiceImpl  implements IAdminService{
	
	IAdminDao ad = new AdminDaoImpl();
	public List<Admin> findAlladmins() {
		List<Admin> list = ad.getAllAdmin();
		return list;
	}
	
	public void save(Admin a) {
		ad.save(a);
	}
	
	public Admin findById(String id) {
		Admin admin = ad.getAdminById(id);
		return admin;
	}

	public Admin findBynp(String name, String password) {
		Admin admin = ad.getAdminBynp(name,password);
		return admin;
	}
	public void update(Admin a) {
		ad.update(a);
	}
	
	public void delete(String id) {
		ad.delete(id);
	}


}
