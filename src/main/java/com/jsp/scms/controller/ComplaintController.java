package com.jsp.scms.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jsp.scms.dao.UserDao;
import com.jsp.scms.entity.Complaint;
import com.jsp.scms.entity.User;
import com.jsp.scms.service.ComplaintService;

@Controller
public class ComplaintController {

    private ComplaintService complaintService;
    private UserDao userDao;

    public ComplaintController(ComplaintService complaintService,
                               UserDao userDao) {
        this.complaintService = complaintService;
        this.userDao = userDao;
    }

    @GetMapping("/user/complaint")
    public String complaintForm() {
        return "complaint-form";
    }

    @PostMapping("/user/saveComplaint")
    public String saveComplaint(Complaint complaint, Principal principal) {

        User user = userDao.findByEmail(principal.getName())
                .orElseThrow(() -> new RuntimeException("User not found"));

        complaint.setUser(user);
        complaintService.addComplaint(complaint);

        return "redirect:/user/myComplaints";
    }

    @GetMapping("/user/myComplaints")
    public String myComplaints(Principal principal, Model model) {

        User user = userDao.findByEmail(principal.getName())
                .orElseThrow(() -> new RuntimeException("User not found"));

        model.addAttribute("complaints",
                complaintService.getMyComplaints(user));

        return "my-complaints";
    }

    @GetMapping("/admin/home")
    public String adminHome(Model model) {
        model.addAttribute("complaints",
                complaintService.getAllComplaints());

        return "admin-home";
    }

    @PostMapping("/admin/updateStatus")
    public String updateStatus(@RequestParam int id,
                               @RequestParam String status) {

        complaintService.updateStatus(id, status);

        return "redirect:/admin/home";
    }
}