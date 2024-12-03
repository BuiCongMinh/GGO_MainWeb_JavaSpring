package testprojectspring.com.example.testspring.sevice;

import java.util.List;

import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.domain.BusinessPartner;
import testprojectspring.com.example.testspring.repository.PartnerRepository;

@Service
public class PartnerService {
    private final PartnerRepository prRepository;

    public PartnerService(PartnerRepository prRepository) {
        this.prRepository = prRepository;
    }

    public List<BusinessPartner> handelGetAllPartners() {
        return this.prRepository.findAll();
    }

    public BusinessPartner handelSavePartner(BusinessPartner partner) {
        return this.prRepository.save(partner);
    }

    public BusinessPartner handelGetPartnerByID(long id) {
        return this.prRepository.findById(id).get();
    }

    public void handelDeletePartner(long id) {
        this.prRepository.deleteById(id);
    }
}
