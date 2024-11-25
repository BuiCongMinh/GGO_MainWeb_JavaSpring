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

    public Project handelProjectByID(long id) {
        return this.projectRepository.findById(id).get();
    }

    public List<Project> handelGetAllProject() {
        return this.projectRepository.findAll();
    }

    public void handelDeleteProjectById(long id) {
        this.projectRepository.deleteById(id);
    }

}
