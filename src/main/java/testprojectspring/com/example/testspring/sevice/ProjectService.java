package testprojectspring.com.example.testspring.sevice;

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

}
