package com.room.dao;

import java.util.List;

import com.room.bean.Inspection;

public interface IInspectionDao {
	List<Inspection> getAllInspection();
	void save(Inspection i); 
	
	Inspection getInspectionById(String id);
	void update(Inspection i);
	
	void delete(String id);

}
