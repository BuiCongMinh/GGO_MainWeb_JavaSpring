package testprojectspring.com.example.testspring.sevice;

import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.repository.PartnerRepository;

@Service
public class PartnerService {
    private final PartnerRepository prRepository;

    public PartnerService(PartnerRepository prRepository) {
        this.prRepository = prRepository;
    }

}
