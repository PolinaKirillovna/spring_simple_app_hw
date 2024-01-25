package com.example.dao;

import com.example.model.Login;
import com.example.model.User;

public interface UserDao {

    int register(User user);

    User validateUser(Login login);
}
