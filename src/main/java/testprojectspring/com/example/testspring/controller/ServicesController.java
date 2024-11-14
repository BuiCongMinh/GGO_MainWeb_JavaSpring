package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ServicesController {
    @GetMapping("/admin/services")
    public String getMethodName() {
        return "admin/services/show";
    }

}
