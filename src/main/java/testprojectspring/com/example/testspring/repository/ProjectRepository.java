package testprojectspring.com.example.testspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import testprojectspring.com.example.testspring.domain.Project;

@Repository
public interface ProjectRepository extends JpaRepository<Project, Long> {

}
