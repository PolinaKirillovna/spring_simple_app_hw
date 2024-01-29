package com.example.demo.dao;

import com.example.demo.model.Login;
import com.example.demo.model.User;

import java.util.List;

public interface UserDao {

    int register(User user);

    User validateUser(Login login);

    List<User> getAllUsers();

    int changePassword(String username, String oldPassword, String newPassword);
    User getUserByUsername(String username);
}

