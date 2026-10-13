package com.jsp.scms.dao;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.scms.entity.User;

public interface UserDao extends JpaRepository<User, Integer> {

    Optional<User> findByEmail(String email);
}