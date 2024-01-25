package com.example.service;

import com.example.model.Login;
import com.example.model.User;

public interface UserService {

    int register(User user);

    User validateUser(Login login);
}
