package com.example.demo.service;

import com.example.demo.model.Login;
import com.example.demo.model.User;

import java.util.List;


public interface UserService {

    int register(User user) throws Exception;

    User validateUser(Login login) throws Exception;

    int changePassword(String username, String oldPassword, String newPassword) throws Exception;

    List<User> getAllUsers();

    User getUser(String username);
}

