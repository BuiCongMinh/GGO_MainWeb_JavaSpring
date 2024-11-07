package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class DasboardController {

    @GetMapping("/admin")
    public String getAdminDasboard(Model model) {
        return "admin/dashboard/show";

    }

}
