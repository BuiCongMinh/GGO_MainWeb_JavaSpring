package testprojectspring.com.example.testspring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class BroadNewsController {
    @GetMapping("/admin/broad_news")
    public String getAdminBroadNewsPage() {
        return "admin/broad_news/show";
    }
}
