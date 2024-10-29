package testprojectspring.com.example.testspring.sevice;

import java.util.List;
import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.domain.User;
import testprojectspring.com.example.testspring.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository useRepository;

    public UserService(UserRepository userRepository) {
        this.useRepository = userRepository;
    }

    public String handleHello() {
        return "hello this is mvn from UserSevice !";
    }

    public List<User> handleGetAllUsers() {
        return this.useRepository.findAll();
    }

    public User handelGetAllUserByEmail(String email) {
        return this.useRepository.findTop1ByEmail(email);
    }

    public User handelSaveUser(User newUser) {
        return this.useRepository.save(newUser);
    }

    public User handelUserByID(long id) {
        return this.useRepository.findById(id).get();
    }

    public void handelDeleteById(long id) {
        this.useRepository.deleteById(id);
    }

}
