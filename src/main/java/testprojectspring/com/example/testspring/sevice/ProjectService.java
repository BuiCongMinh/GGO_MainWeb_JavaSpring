package testprojectspring.com.example.testspring.sevice;

import java.util.List;

import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.domain.Project;
import testprojectspring.com.example.testspring.repository.ProjectRepository;

@Service
public class ProjectService {
    private final ProjectRepository projectRepository;

    public ProjectService(ProjectRepository projectRepository) {
        this.projectRepository = projectRepository;
    }

    public Project handelSaveProject(Project newProject) {
        return this.projectRepository.save(newProject);
    }

    public List<Project> handelGetAllProject() {
        return this.projectRepository.findAll();
    }

}
