package com.room.dao;

import java.util.List;

import com.room.bean.Notice;

public interface INoticeDao {
	List<Notice> FindAll();
	Notice Select(String id);
	void Add(Notice n);
	void Update(Notice n);
	void Delete(String id);
}
