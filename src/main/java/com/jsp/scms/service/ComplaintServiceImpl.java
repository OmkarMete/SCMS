package com.jsp.scms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jsp.scms.dao.ComplaintDao;
import com.jsp.scms.entity.Complaint;
import com.jsp.scms.entity.User;

@Service
public class ComplaintServiceImpl implements ComplaintService {

    private ComplaintDao complaintDao;

    public ComplaintServiceImpl(ComplaintDao complaintDao) {
        this.complaintDao = complaintDao;
    }

    @Override
    public Complaint addComplaint(Complaint complaint) {
        complaint.setStatus("PENDING");
        return complaintDao.save(complaint);
    }

    @Override
    public List<Complaint> getMyComplaints(User user) {
        return complaintDao.findByUser(user);
    }

    @Override
    public List<Complaint> getAllComplaints() {
        return complaintDao.findAll();
    }

    @Override
    public Complaint updateStatus(int id, String status) {
        Complaint complaint = complaintDao.findById(id)
                .orElseThrow(() ->
                    new RuntimeException("Complaint not found"));

        complaint.setStatus(status);
        return complaintDao.save(complaint);
    }
}