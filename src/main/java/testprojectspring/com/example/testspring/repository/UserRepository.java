package testprojectspring.com.example.testspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import testprojectspring.com.example.testspring.domain.User;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User save(User minhvn);

    User findTop1ByEmail(String email);

}