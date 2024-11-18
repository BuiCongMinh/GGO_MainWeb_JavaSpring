package testprojectspring.com.example.testspring.sevice;

import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public long getCountAllProduct() {
        return productRepository.count();
    }

}
