package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import testprojectspring.com.example.testspring.domain.User;
import testprojectspring.com.example.testspring.sevice.UserService;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    final private UserService userSevice;

    public UserController(UserService userSevice) {
        this.userSevice = userSevice;
    }

    // ===== GET =====
    @GetMapping("/")
    public String getNewPage(Model model) {
        String newString = this.userSevice.handleHello();
        model.addAttribute("newString", newString);
        model.addAttribute("mvn", "hỏi mvn");

        return "helloFromJSP";
    }

    @GetMapping("/admin/user/create")
    public String getCreateUserPage(
            @ModelAttribute("newUser") User newUser) {
        return "admin/user/create";
    }

    // ===== POST =====
    @PostMapping("/admin/user/create")
    public String postCreateUser() {
        // TODO: process POST request

        System.out.println("run here !");

        return new String();
    }

}
