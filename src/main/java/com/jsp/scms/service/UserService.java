package com.jsp.scms.service;

import com.jsp.scms.entity.User;

public interface UserService {

    User registerUser(User user);

    User registerAdmin(User user);
}
