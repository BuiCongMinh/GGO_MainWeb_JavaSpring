package testprojectspring.com.example.testspring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ProductsController {
    @GetMapping("/admin/products")
    public String getMethodName() {
        return "admin/products/show";
    }

}
