package testprojectspring.com.example.testspring.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import testprojectspring.com.example.testspring.domain.Product;
import testprojectspring.com.example.testspring.domain.Services;
import testprojectspring.com.example.testspring.sevice.SerService;
import testprojectspring.com.example.testspring.sevice.UploadService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ServicesController {
    private final SerService serService;
    private final UploadService uploadService;

    public ServicesController(SerService serService, UploadService uploadService) {
        this.serService = serService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/service")
    public String getAdminAllServicesPage(Model model) {
        List<Services> allServices = this.serService.handelAllService();
        model.addAttribute("services", allServices);
        return "admin/services/show";
    }

    @GetMapping("/admin/service/{id}")
    public String getMethodName(
            @PathVariable long id,
            Model model

    ) {

        Services service = this.serService.handelGetServiceById(id);
        model.addAttribute("service", service);

        return "admin/services/detail";
    }

    @GetMapping("/admin/service/create")
    public String getAdminCreateServicePage(Model model) {

        model.addAttribute("newService", new Services());
        return "admin/services/create";
    }

    @GetMapping("/admin/service/update/{id}")
    public String getAdminUpdateServicePage(
            @PathVariable long id,
            Model model

    ) {

        Services services = this.serService.handelGetServiceById(id);
        model.addAttribute("service", services);

        return "admin/services/update";
    }

    @GetMapping("/admin/service/delete/{id}")
    public String getAdminDeleteServicePage(
            @PathVariable long id,
            Model model

    ) {

        Services service = this.serService.handelGetServiceById(id);
        model.addAttribute("service", service);

        return "admin/services/delete";
    }

    // ==================Post =====================

    @PostMapping("/admin/service/create")
    public String postCreateService(
            @ModelAttribute("newService") @Valid Services newServices,
            BindingResult serviceResult,
            @RequestParam("imgService") MultipartFile file

    ) {

        if (file.isEmpty()) {
            serviceResult.rejectValue("image", "error.newService", "Ảnh dịch vụ không được để trống");
        }

        // validate if input errors
        if (serviceResult.hasErrors()) {
            return "admin/services/create";
        }

        String image = this.uploadService.handleSaveUploadFile(file, "/admin/service");
        newServices.setImage(image);

        this.serService.handelSaveService(newServices);

        return "redirect:/admin/service";
    }

    // tạm thời - Đang thiếy chức năng hiển thị hình ảnh !
    @PostMapping("/admin/service/update")
    public String postUpdateService(
            @ModelAttribute("service") @Valid Services currentService

    ) {

        Services service = this.serService.handelGetServiceById(currentService.getId());
        if (service != null) {
            service.setName_service(currentService.getName_service());
            this.serService.handelSaveService(service);
        }
        // Thiếu chức năng set image

        return "redirect:/admin/service";
    }

    @PostMapping("/admin/service/delete")
    public String postDeleteProduct(
            @ModelAttribute("service") Services services

    ) {
        this.serService.handelDeleteServiceById(services.getId());
        return "redirect:/admin/service";
    }

}
