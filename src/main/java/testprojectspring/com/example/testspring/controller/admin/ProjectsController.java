package testprojectspring.com.example.testspring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import testprojectspring.com.example.testspring.domain.Project;

@Controller
public class ProjectsController {
    @GetMapping("/admin/projects")
    public String getAdminAllProjectsPage() {
        return "/admin/projects/show";
    }

    @GetMapping("/admin/projects/create")
    public String getAdminCreateProjectsPage(Model model) {
        model.addAttribute("newProject", new Project());
        return "/admin/projects/create";
    }

}
