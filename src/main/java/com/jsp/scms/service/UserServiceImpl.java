 
package com.jsp.scms.service;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.jsp.scms.dao.UserDao;
import com.jsp.scms.entity.User;

@Service
public class UserServiceImpl implements UserService {

    private UserDao userDao;
    private PasswordEncoder passwordEncoder;

    public UserServiceImpl(UserDao userDao,
                           PasswordEncoder passwordEncoder) {
        this.userDao = userDao;
        this.passwordEncoder = passwordEncoder;
    }

    @Override
    public User registerUser(User user) {

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole("USER");

        return userDao.save(user);
    }

    @Override
    public User registerAdmin(User user) {

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setRole("ADMIN");

        return userDao.save(user);
    }
}
