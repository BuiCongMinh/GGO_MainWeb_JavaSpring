package testprojectspring.com.example.testspring.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import testprojectspring.com.example.testspring.domain.Project;
import testprojectspring.com.example.testspring.sevice.ProjectService;
import testprojectspring.com.example.testspring.sevice.UploadService;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

@Controller
public class ProjectsController {
    private final ProjectService projectService;
    private final UploadService uploadService;

    public ProjectsController(
            ProjectService projectService,
            UploadService uploadService) {

        this.projectService = projectService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/project")
    public String getAdminAllProjectsPage(Model model) {
        List<Project> allProjects = this.projectService.handelGetAllProject();

        model.addAttribute("allProjects", allProjects);
        return "admin/projects/show";

    }

    @GetMapping("/admin/project/{id}")
    public String getDetailProjectPage(
            @PathVariable long id,
            Model model) {

        Project project = this.projectService.handelProjectByID(id);
        model.addAttribute("project", project);
        return "admin/projects/detail";
    }

    @GetMapping("/admin/project/create")
    public String getAdminCreateProjectsPage(Model model) {
        model.addAttribute("newProject", new Project());
        return "admin/projects/create";
    }

    @GetMapping("/admin/project/update/{id}")
    public String getAdminUpdateProjectPage(
            @PathVariable long id,
            Model model) {

        Project project = this.projectService.handelProjectByID(id);
        model.addAttribute("project", project);

        return "admin/projects/update";
    }

    @GetMapping("/admin/project/delete/{id}")
    public String getAdminDeleteProjectPage(
            @PathVariable long id,
            Model model) {

        Project project = this.projectService.handelProjectByID(id);
        model.addAttribute("project", project);
        return "admin/projects/delete";
    }

    // ============== Post ==================
    @PostMapping("/admin/project/create")
    public String postCreateProject(
            @ModelAttribute("newProject") @Valid Project project,
            BindingResult newProjectBindingResult,
            @RequestParam("imgProject") MultipartFile file) {

        // check input image empty !
        if (file.isEmpty()) {
            newProjectBindingResult.rejectValue("image", "error.newProject", "Ảnh dự án không được để trống");
        }

        // validate if input errors
        if (newProjectBindingResult.hasErrors()) {
            return "admin/projects/create";
        }

        String image = this.uploadService.handleSaveUploadFile(file,
                "/admin/project");
        project.setImage(image);

        this.projectService.handelSaveProject(project);
        return "redirect:/admin/project";

    }

    @PostMapping("/admin/project/update")
    public String postUpdateProject(
            @ModelAttribute("project") Project currentProject) {

        Project project = this.projectService.handelProjectByID(currentProject.getId());

        if (project != null) {
            project.setName_project(currentProject.getName_project());

            this.projectService.handelSaveProject(project);

        }

        // còn thiếu chức năng set image !

        return "redirect:/admin/project";
    }

    @PostMapping("/admin/project/delete")
    public String postDeleteProject(
            @ModelAttribute("project") Project project) {

        this.projectService.handelDeleteProjectById(project.getId());

        return "redirect:/admin/project";
    }

}
