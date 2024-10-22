package testprojectspring.com.example.testspring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

// @SpringBootApplication
@SpringBootApplication(exclude = org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration.class)
public class TestspringApplication {

	public static void main(String[] args) {
		SpringApplication.run(TestspringApplication.class, args);
	}

}
