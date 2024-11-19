package com.room.dao;

import java.util.List;
import com.room.bean.CustomAccount;

public interface ICustomAccountDao {
    List<CustomAccount> getALLcustomAccount();
    void save(CustomAccount c);
    void delete(String accountid);
    void update(CustomAccount c);
    CustomAccount getCustomAccountById(String accountid);
    CustomAccount getCustomAccountBynp(String username, String password);
}

