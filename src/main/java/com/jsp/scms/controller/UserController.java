//package com.jsp.scms.controller;
//
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PostMapping;
//
//import com.jsp.scms.entity.User;
//import com.jsp.scms.service.UserService;
//
//@Controller
//public class UserController {
//
//    private UserService userService;
//
//    public UserController(UserService userService) {
//        this.userService = userService;
//    }
//
//    @GetMapping("/loginpage")
//    public String loginPage() {
//        return "loginpage";
//    }
//
//    @GetMapping("/register")
//    public String registerPage(Model model) {
//        model.addAttribute("user", new User());
//        return "register";
//    }
//
//    @PostMapping("/saveUser")
//    public String saveUser(User user) {
//        userService.registerUser(user);
//        return "redirect:/loginpage?registered";
//    }
//
//    @GetMapping("/user/home")
//    public String userHome() {
//        return "user-home";
//    }
//}




 
package com.jsp.scms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.jsp.scms.entity.User;
import com.jsp.scms.service.UserService;

@Controller
public class UserController {

    private UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/loginpage")
    public String loginPage() {
        return "loginpage";
    }

    @GetMapping("/register")
    public String registerPage(Model model) {
        model.addAttribute("user", new User());
        return "register";
    }

    @PostMapping("/saveUser")
    public String saveUser(User user) {
        userService.registerUser(user);
        return "redirect:/loginpage?registered";
    }

    // Admin Registration Page
    @GetMapping("/admin/register")
    public String adminRegisterPage(Model model) {
        model.addAttribute("user", new User());
        return "admin-register";
    }

    // Save Admin Account
    @PostMapping("/admin/saveAdmin")
    public String saveAdmin(User user) {
        userService.registerAdmin(user);
        return "redirect:/loginpage?registered";
    }

    @GetMapping("/user/home")
    public String userHome() {
        return "user-home";
    }
}
