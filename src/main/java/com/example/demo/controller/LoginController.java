package com.example.demo.controller;

import com.example.demo.model.Login;
import com.example.demo.model.User;
import com.example.demo.service.UserService;
import lombok.SneakyThrows;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    @Autowired
    UserService userService;

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView showLogin() {
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("login", new Login());
        return mav;
    }

    @SneakyThrows
    @RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
    public ModelAndView loginProcess(
            @ModelAttribute("login") Login login) {
        ModelAndView mav = null;

        User user = userService.validateUser(login);

        if (null != user) {
            mav = new ModelAndView("welcome");
            mav.addObject("username", user.getUsername());
        } else {
            mav = new ModelAndView("login");
            mav.addObject("message", "Username or Password is wrong!!");
        }

        return mav;
    }

    @RequestMapping(value = "/changePassword", method = RequestMethod.POST)
    public ModelAndView changePassword(
            @RequestParam("username") String username,
            @RequestParam("newPassword") String newPassword) throws Exception {
        ModelAndView mav = null;

        User user = userService.getUser(username);

        int result = userService.changePassword(username, user.getPassword() ,newPassword);
        if (result == 1) {
            mav = new ModelAndView("welcome");
            mav.addObject("username", username);
            mav.addObject("message", "Password changed successfully!");
        } else {
            mav = new ModelAndView("welcome");
            mav.addObject("username", username);
            mav.addObject("message", "Failed to change password!");
        }

        return mav;
    }

    @RequestMapping(value = "/getAllUsers", method = RequestMethod.GET)
    public ModelAndView getAllUsers() {
        ModelAndView mav = new ModelAndView("users");
        mav.addObject("users", userService.getAllUsers());
        return mav;
    }
}

