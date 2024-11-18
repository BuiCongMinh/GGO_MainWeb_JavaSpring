package testprojectspring.com.example.testspring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import testprojectspring.com.example.testspring.domain.Product;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

}
