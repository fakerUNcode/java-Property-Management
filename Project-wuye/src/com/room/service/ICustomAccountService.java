package com.room.service;

import java.util.List;

import com.room.bean.CustomAccount;



public interface ICustomAccountService {
    List<CustomAccount> findAllcustomAccount();
    void save(CustomAccount c);
    void update(CustomAccount c);
    void delete(String accountid);
    CustomAccount findById(String accountid);
    CustomAccount findBynp(String username, String password);
}
