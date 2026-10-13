package com.jsp.scms.service;

import java.util.List;

import com.jsp.scms.entity.Complaint;
import com.jsp.scms.entity.User;

public interface ComplaintService {

    Complaint addComplaint(Complaint complaint);

    List<Complaint> getMyComplaints(User user);

    List<Complaint> getAllComplaints();

    Complaint updateStatus(int id, String status);
}