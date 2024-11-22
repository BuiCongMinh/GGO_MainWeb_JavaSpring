package testprojectspring.com.example.testspring.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import testprojectspring.com.example.testspring.domain.Project;
import testprojectspring.com.example.testspring.sevice.ProjectService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

@Controller
public class ProjectsController {
    private final ProjectService projectService;

    public ProjectsController(ProjectService projectService) {
        this.projectService = projectService;
    }

    @GetMapping("/admin/project")
    public String getAdminAllProjectsPage(Model model) {
        List<Project> allProjects = this.projectService.handelGetAllProject();

        model.addAttribute("allProjects", allProjects);

        return "/admin/projects/show";

    }

    @GetMapping("/admin/project/create")
    public String getAdminCreateProjectsPage(Model model) {
        model.addAttribute("newProject", new Project());
        return "/admin/projects/create";
    }

    // ====== Post =====
    @PostMapping("/admin/project/create")
    public String postCreateProject(
            @ModelAttribute("newProject") @Valid Project project,
            BindingResult newProjectBindingResult,
            @RequestParam("imgProject") MultipartFile file) {

        return "redirect:/admin/project";
    }

}
