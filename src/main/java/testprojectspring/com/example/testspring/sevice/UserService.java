package testprojectspring.com.example.testspring.sevice;

import java.util.List;
import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.domain.User;
import testprojectspring.com.example.testspring.repository.UserRepository;

@Service
public class UserService {
    private final UserRepository userRoRepository;

    public UserService(UserRepository userRepository) {
        this.userRoRepository = userRepository;
    }

    public String handleHello() {
        return "hello this is mvn from UserSevice !";
    }

    public List<User> handleGetAllUsers() {
        return this.userRoRepository.findAll();
    }

    public User handelGetAllUserByEmail(String email) {
        return this.userRoRepository.findTop1ByEmail(email);
    }

    public User handelSaveUser(User newUser) {
        return this.userRoRepository.save(newUser);
    }

}
