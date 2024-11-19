package com.room.service;

import java.util.List;

import com.room.bean.Inspection;


public interface IInspectionService {
	List<Inspection> findAllinspections();
	void save(Inspection i);
	Inspection findById(String id);
	void update(Inspection i);
	void delete(String id);
}
