package testprojectspring.com.example.testspring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PartnersController {
    @GetMapping("/admin/partner")
    public String getAdminAllPartnersPage() {
        return "/admin/partners/show";
    }

}
