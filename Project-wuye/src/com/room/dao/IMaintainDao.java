package com.room.dao;

import java.util.List;

import com.room.bean.Maintain;

public interface IMaintainDao {
	List<Maintain> getAllMaintain();
	void save(Maintain a); 
	Maintain getMaintainById(String id);
	List<Maintain> getMaintainByMaintainer(String maintainer);
	void update(Maintain a);
	void delete(String id);
}
