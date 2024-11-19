package com.room.service;

import java.util.List;

import com.room.bean.House;


public interface IHouseService {
	List<House> findAllHouse();
	List<House> findByOwnerid(String oid);
	House findById(String id);
	void add(House h);
	void delete(String id);
	void update(House h);
}
