package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PartnersController {
    @GetMapping("/admin/partners")
    public String getAdminAllPartnersPage() {
        return "/admin/partners/show";
    }

}
