package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import testprojectspring.com.example.testspring.domain.User;
import testprojectspring.com.example.testspring.repository.UserRepository;
import testprojectspring.com.example.testspring.sevice.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import java.util.List;

@Controller
public class UserController {

    private final UserService userSevice;

    public UserController(
            UserService userSevice,
            UserRepository userRepository) {

        this.userSevice = userSevice;

    }

    // ========== GET ===========
    @GetMapping("/")
    public String getNewPage(Model model) {
        User allUsers = this.userSevice.handelGetAllUserByEmail("2@gmail.com");

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

    @GetMapping("/admin/user")
    public String getAllUsersPage(
            Model model

    ) {
        List<User> allUsers = this.userSevice.handleGetAllUsers();
        model.addAttribute("allUsers", allUsers);
        return "admin/user/show";
    }

    @GetMapping("/admin/user/{id}")
    public String getDetailUserPage(
            Model model,
            @PathVariable long id) {

        User currentUser = this.userSevice.handelUserByID(id);

        model.addAttribute("user", currentUser);

        return "admin/user/detail";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String getDeleteUserPage(
            @PathVariable long id,
            Model model) {

        User currentUser = this.userSevice.handelUserByID(id);
        model.addAttribute("user", currentUser);
        return "admin/user/delete";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(
            @PathVariable long id,
            Model model) {

        User currentUser = userSevice.handelUserByID(id);
        model.addAttribute("user", currentUser);
        return "admin/user/update";
    }

    // =========== POST ============
    @PostMapping("/admin/user/create")
    public String postCreateUser(
            Model model,
            @ModelAttribute("newUser") User mvn) {

        this.userSevice.handelSaveUser(mvn);

        return "redirect:/admin/user";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUser(
            @ModelAttribute("user") User user) {

        this.userSevice.handelDeleteById(user.getId());
        return "redirect:/admin/user";
    }

    // update user
    @PostMapping("/admin/user/update")
    public String postUpdateUser(@ModelAttribute("user") User currentUser) {
        // TODO: process POST request
        User user = this.userSevice.handelUserByID(currentUser.getId());

        if (user != null) {
            System.out.println(">>> run heare !");
            user.setEmail(currentUser.getEmail());
            user.setAvartar(currentUser.getAvartar());

            this.userSevice.handelSaveUser(user);
        }

        return "redirect:/admin/user";
    }

}
