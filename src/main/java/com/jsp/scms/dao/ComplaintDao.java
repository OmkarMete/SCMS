package com.jsp.scms.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jsp.scms.entity.Complaint;
import com.jsp.scms.entity.User;

public interface ComplaintDao extends JpaRepository<Complaint, Integer> {

    List<Complaint> findByUser(User user);
}