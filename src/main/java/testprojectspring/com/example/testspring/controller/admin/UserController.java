package testprojectspring.com.example.testspring.controller.admin;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import testprojectspring.com.example.testspring.domain.User;
import testprojectspring.com.example.testspring.repository.UserRepository;
import testprojectspring.com.example.testspring.sevice.UploadService;
import testprojectspring.com.example.testspring.sevice.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

import java.util.List;

@Controller
public class UserController {

    private final UserService userSevice;
    private final UploadService uploadService;
    private final PasswordEncoder passwordEncoder;

    public UserController(
            UserService userSevice,
            UserRepository userRepository,
            UploadService uploadService,
            PasswordEncoder passwordEncoder) {

        this.passwordEncoder = passwordEncoder;
        this.userSevice = userSevice;
        this.uploadService = uploadService;

    }

    // ========== GET ===========
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
            @ModelAttribute("newUser") @Valid User mvn,
            BindingResult newUserBindingResult,
            @RequestParam("MVN") MultipartFile file) {

        // check input file empty
        if (file.isEmpty()) {
            newUserBindingResult.rejectValue("avatar", "error.newUser", "Avatar không được để trống !");
        }

        List<FieldError> errors = newUserBindingResult.getFieldErrors();

        for (FieldError error : errors) {
            System.out.println(">>>" + error.getField() + " - " + error.getDefaultMessage());
        }

        // validate
        if (newUserBindingResult.hasErrors()) {
            return "/admin/user/create";
        }

        String avatar = this.uploadService.handleSaveUploadFile(file, "admin/avatar");
        String hashPassword = this.passwordEncoder.encode(mvn.getPassword());
        mvn.setAvatar(avatar);
        mvn.setPassword(hashPassword);
        mvn.setRole(this.userSevice.getRoleByName(mvn.getRole().getName()));

        // save
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
    public String postUpdateUser(
            @ModelAttribute("user") User currentUser) {

        User user = this.userSevice.handelUserByID(currentUser.getId());

        if (user != null) {
            user.setEmail(currentUser.getEmail());

            this.userSevice.handelSaveUser(user);
        }

        return "redirect:/admin/user";
    }

}
