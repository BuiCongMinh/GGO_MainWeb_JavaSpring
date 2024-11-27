package testprojectspring.com.example.testspring.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import testprojectspring.com.example.testspring.domain.Product;
import testprojectspring.com.example.testspring.sevice.ProductService;
import testprojectspring.com.example.testspring.sevice.UploadService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ProductsController {
    private final ProductService productService;
    private final UploadService uploadService;

    public ProductsController(ProductService productService, UploadService uploadService) {
        this.productService = productService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/product")
    public String getAdminAllProductsPage(Model model) {
        List<Product> products = this.productService.handelAllProduct();
        model.addAttribute("products", products);

        return "admin/products/show";
    }

    @GetMapping("/admin/product/{id}")
    public String getDetailProductPage(
            @PathVariable long id,
            Model model) {

        Product product = this.productService.handelGetProductByID(id);
        model.addAttribute("product", product);

        return "admin/products/detail";
    }

    @GetMapping("/admin/product/create")
    public String getCreateProductPage(Model model) {
        model.addAttribute("newProduct", new Product());
        return "admin/products/create";
    }

    @GetMapping("/admin/product/update/{id}")
    public String getMethodName(
            @PathVariable long id,
            Model model) {

        Product product = this.productService.handelGetProductByID(id);
        model.addAttribute("product", product);

        return "admin/products/update";
    }

    @GetMapping("/admin/product/delete/{id}")
    public String getAdminDeleteProductPage(
            @PathVariable long id,
            Model model) {

        Product product = this.productService.handelGetProductByID(id);
        model.addAttribute("product", product);

        return "admin/products/delete";
    }

    // ==============Post=======================
    @PostMapping("/admin/product/create")
    public String postCreateProduct(
            @ModelAttribute("newProduct") @Valid Product product,
            BindingResult productBindingResult,
            @RequestParam("imgProduct") MultipartFile file) {

        // TODO: process POST request
        if (file.isEmpty()) {
            productBindingResult.rejectValue("image", "error.newProduct", "Ảnh sản phẩm không được để trống");
        }

        // validate if input errors
        if (productBindingResult.hasErrors()) {
            return "admin/products/create";
        }

        String image = this.uploadService.handleSaveUploadFile(file, "/admin/product");
        product.setImage(image);

        this.productService.handelSaveProduct(product);

        return "redirect:/admin/product";
    }

    // tạm thời - Đang thiếy chức năng hiển thị hình ảnh !
    @PostMapping("/admin/product/update")
    public String postUpdateProduct(
            @ModelAttribute("product") @Valid Product currentProduct

    ) {

        Product product = this.productService.handelGetProductByID(currentProduct.getId());
        if (product != null) {
            product.setName_product(currentProduct.getName_product());

            this.productService.handelSaveProduct(product);
        }
        // Thiếu chức năng set image

        return "redirect:/admin/product";
    }

    @PostMapping("/admin/product/delete")
    public String postDeleteProduct(
            @ModelAttribute("product") Product product

    ) {
        this.productService.handelDeleteProductByID(product.getId());
        return "redirect:/admin/product";
    }

}
