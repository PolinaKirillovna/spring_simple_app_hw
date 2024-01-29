package com.example.demo.service;

import com.example.demo.dao.UserDao;
import com.example.demo.exceptions.CustomException;
import com.example.demo.model.Login;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    public int register(User user) {
        if(userDao.getUserByUsername(user.getUsername()) != null) {
            throw new CustomException("Username already registered", HttpStatus.BAD_REQUEST);
        }
        return userDao.register(user);
    }


    public User validateUser(Login login) {
        User user = userDao.validateUser(login);
        if(user == null || !user.getPassword().equals(login.getPassword())) {
            throw new CustomException("Invalid password", HttpStatus.UNAUTHORIZED);
        }
        return user;
    }


    public int changePassword(String username, String newPassword, String oldPassword) {
        User user = userDao.getUserByUsername(username);
        if(user == null || user.getPassword().equals(oldPassword)) {
            throw new CustomException("Old password matches new password, please choose another one", HttpStatus.BAD_REQUEST);
        }
        return userDao.changePassword(username, oldPassword, newPassword);
    }

    public List<User> getAllUsers() {
        return userDao.getAllUsers();
    }

    public User getUser(String username) {
        return userDao.getUserByUsername(username);
    }
}
