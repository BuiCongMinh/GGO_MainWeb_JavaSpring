package testprojectspring.com.example.testspring.controller.admin;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;

import testprojectspring.com.example.testspring.domain.BusinessPartner;
import testprojectspring.com.example.testspring.sevice.PartnerService;
import testprojectspring.com.example.testspring.sevice.UploadService;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import jakarta.validation.Valid;

import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class PartnersController {
    private PartnerService partnerService;
    private UploadService uploadService;

    public PartnersController(PartnerService partnerService, UploadService uploadService) {
        this.partnerService = partnerService;
        this.uploadService = uploadService;
    }

    @GetMapping("/admin/partner")
    public String getAdminAllPartnersPage(Model model) {

        List<BusinessPartner> partners = this.partnerService.handelGetAllPartners();
        model.addAttribute("partners", partners);
        return "/admin/partners/show";
    }

    @GetMapping("/admin/partner/{id}")
    public String getAdminPartnerDetail(
            @PathVariable long id,
            Model model

    ) {

        BusinessPartner partner = this.partnerService.handelGetPartnerByID(id);
        model.addAttribute("partner", partner);
        return "admin/partners/detail";
    }

    @GetMapping("/admin/partner/create")
    public String getAdminCreatePartnerPage(Model model) {
        model.addAttribute("newPartner", new BusinessPartner());
        return "admin/partners/create";
    }

    @GetMapping("/admin/partner/update/{id}")
    public String getAdminUpdatePartnerPage(
            @PathVariable long id,
            Model model

    ) {
        BusinessPartner partner = this.partnerService.handelGetPartnerByID(id);
        model.addAttribute("partner", partner);
        return "admin/partners/update";
    }

    @GetMapping("/admin/partner/delete/{id}")
    public String getAdminDeletePartnerPage(
            @PathVariable long id,
            Model model

    ) {
        BusinessPartner partner = this.partnerService.handelGetPartnerByID(id);
        model.addAttribute("partner", partner);

        return "admin/partners/delete";
    }

    // ====================Post===============================

    @PostMapping("/admin/partner/create")
    public String postMethodName(
            @ModelAttribute("newPartner") @Valid BusinessPartner newPartner,
            BindingResult partnerBidingResult,
            @RequestParam("imgPartner") MultipartFile file

    ) {
        // Check "file" empty
        if (file.isEmpty()) {
            partnerBidingResult.rejectValue("image", "error.newPartner", "Ảnh đối tác không được để trống !");
        }

        // Validate if input has errors
        if (partnerBidingResult.hasErrors()) {
            return "admin/partners/create";
        }

        String img = this.uploadService.handleSaveUploadFile(file, "/admin/partner");
        newPartner.setImage(img);

        this.partnerService.handelSavePartner(newPartner);

        return "redirect:/admin/partner";
    }

    // tạm thời - Đang thiếy chức năng hiển thị hình ảnh !
    @PostMapping("/admin/partner/update")
    public String postUpdatePartner(
            @ModelAttribute("partner") @Valid BusinessPartner currentPartner

    ) {

        BusinessPartner partner = this.partnerService.handelGetPartnerByID(currentPartner.getId());
        if (partner != null) {
            partner.setName_partner(currentPartner.getName_partner());

            this.partnerService.handelSavePartner(partner);
        }

        // Thiếu chức năng set image

        return "redirect:/admin/partner";
    }

    @PostMapping("/admin/partner/delete")
    public String postDeletePartNer(
            @ModelAttribute("partner") BusinessPartner partner) {

        // TODO: process POST request
        this.partnerService.handelDeletePartner(partner.getId());

        return "redirect:/admin/partner";
    }

}
