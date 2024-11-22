package testprojectspring.com.example.testspring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ServicesController {
    @GetMapping("/admin/service")
    public String getMethodName() {
        return "admin/services/show";
    }

}
