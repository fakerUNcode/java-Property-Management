package com.room.service.impl;

import java.util.List;

import com.room.bean.Maintain;
import com.room.dao.IMaintainDao;
import com.room.dao.impl.MaintainDaoImpl;
import com.room.service.IMaintainService;


public class MaintainServiceImpl  implements IMaintainService{
	
	IMaintainDao ad = new MaintainDaoImpl();
	public List<Maintain> findAllMaintains() {
		List<Maintain> list = ad.getAllMaintain();
		return list;
	}
	
	public void save(Maintain a) {
		ad.save(a);
	}
	
	public Maintain findById(String id) {
		Maintain Maintain = ad.getMaintainById(id);
		return Maintain;
	}

	public List<Maintain> findByMaintainer(String maintainer) {
		List<Maintain> Maintain = ad.getMaintainByMaintainer(maintainer);
		return Maintain;
	}
	public void update(Maintain a) {
		ad.update(a);
	}
	
	public void delete(String id) {
		ad.delete(id);
	}

}
