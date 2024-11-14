package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProjectsController {
    @GetMapping("/admin/projects")
    public String getAdminAllProjectsPage() {
        return "/admin/projects/show";
    }

}
