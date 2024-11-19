package com.room.service;

import java.util.List;

import com.room.bean.Notice;


public interface INoticeService {
	List<Notice> FindAll();
	Notice Select(String id);
	void Add(Notice n);
	void Delete(String id);
	void Update(Notice n);

}
