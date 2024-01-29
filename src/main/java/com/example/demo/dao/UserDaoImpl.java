package com.example.demo.dao;

import com.example.demo.model.Login;
import com.example.demo.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;


@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public int register(User user) {
        String sql = "insert into users values(?,?,?,?)";
        return jdbcTemplate.update(sql, new Object[]{user.getId(), user.getUsername(), user.getPassword(), user.getEmail()});
    }

    @Override
    public User validateUser(Login login) {
        String sql = "select * from users where username=? and password=?";
        List<User> users = jdbcTemplate.query(sql, new Object[]{login.getUsername(), login.getPassword()}, new UserMapper());
        return users.size() > 0 ? users.get(0) : null;
    }


    @Override
    public ArrayList<User> getAllUsers() {
        String sql = "select * from users";
        List<User> users = jdbcTemplate.query(sql, new UserMapper());
        return (ArrayList<User>) users;
    }

    @Override
    public int changePassword(String username, String oldPassword, String newPassword) {
        String sqlUpdateOldPassword = "update users set old_password=? where username=?";
        jdbcTemplate.update(sqlUpdateOldPassword, oldPassword, username);
        String sqlUpdatePassword = "update users set password=? where username=?";
        return jdbcTemplate.update(sqlUpdatePassword, newPassword, username);
    }

    @Override
    public User getUserByUsername(String username) {
        String sql = "select * from users where username='" + username + "'";
        List<User> users = jdbcTemplate.query(sql, new UserMapper());
        return users.size() > 0 ? users.get(0) : null;
    }


}

class UserMapper implements RowMapper<User> {
    public User mapRow(ResultSet rs, int arg1) throws SQLException {
        User user = new User();
        user.setId(rs.getDouble("id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setEmail(rs.getString("email"));
        user.setOldPassword(rs.getString("old_password"));
        return user;
    }
}


