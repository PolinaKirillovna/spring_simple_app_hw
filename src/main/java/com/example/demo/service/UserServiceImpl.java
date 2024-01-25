package com.example.service;

import com.example.dao.UserDao;
import com.example.model.Login;
import com.example.model.User;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    public int register(User user) {
        return userDao.register(user);
    }

    public User validateUser(Login login) {
        return userDao.validateUser(login);
    }

}
