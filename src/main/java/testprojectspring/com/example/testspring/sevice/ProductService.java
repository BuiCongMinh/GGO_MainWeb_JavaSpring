package testprojectspring.com.example.testspring.sevice;

import java.util.List;

import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.domain.Product;
import testprojectspring.com.example.testspring.repository.ProductRepository;

@Service
public class ProductService {
    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product handelGetProductByID(long id) {
        return this.productRepository.findById(id).get();
    }

    public List<Product> handelAllProduct() {
        return this.productRepository.findAll();
    }

    public long getCountAllProduct() {
        return productRepository.count();
    }

    public Product handelSaveProduct(Product product) {
        return productRepository.save(product);
    }

    public void handelDeleteProductByID(long id) {
        this.productRepository.deleteById(id);
    }

}
