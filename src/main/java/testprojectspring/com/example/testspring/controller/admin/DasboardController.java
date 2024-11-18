package testprojectspring.com.example.testspring.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import testprojectspring.com.example.testspring.repository.PartnerRepository;
import testprojectspring.com.example.testspring.repository.ProjectRepository;
import testprojectspring.com.example.testspring.repository.ServiceRepository;
import testprojectspring.com.example.testspring.sevice.ProductService;
import testprojectspring.com.example.testspring.sevice.UserService;

@Controller
public class DasboardController {
    private final UserService userService;
    private final ProductService productService;

    private final PartnerRepository partnerRepository;
    private final ProjectRepository projectRepository;
    private final ServiceRepository serviceRepository;

    public DasboardController(
            UserService userService,
            ProductService productService,
            PartnerRepository partnerRepository,
            ProjectRepository projectRepository,
            ServiceRepository serviceRepository

    ) {

        this.userService = userService;
        this.productService = productService;
        this.partnerRepository = partnerRepository;
        this.projectRepository = projectRepository;
        this.serviceRepository = serviceRepository;

    }

    @GetMapping("/admin")
    public String getAdminDasboard(Model model) {

        model.addAttribute("countUsers", this.userService.getCountAllUser());
        model.addAttribute("countProduct", this.productService.getCountAllProduct());

        // cách 2
        model.addAttribute("countPartner", this.partnerRepository.count());
        model.addAttribute("countProject", this.projectRepository.count());
        model.addAttribute("countService", this.serviceRepository.count());

        return "admin/dashboard/show";

    }

}
