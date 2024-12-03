package testprojectspring.com.example.testspring.sevice;

import java.util.List;

import org.springframework.stereotype.Service;

import testprojectspring.com.example.testspring.domain.Services;
import testprojectspring.com.example.testspring.repository.ServiceRepository;

@Service
public class SerService {
    private final ServiceRepository serviceRepository;

    public SerService(ServiceRepository serviceRepository) {
        this.serviceRepository = serviceRepository;
    }

    public List<Services> handelAllService() {
        return this.serviceRepository.findAll();
    }

    public Services handelSaveService(Services service) {
        return this.serviceRepository.save(service);
    }

    public Services handelGetServiceById(long id) {
        return this.serviceRepository.findById(id).get();
    }

    public void handelDeleteServiceById(long id) {
        this.serviceRepository.deleteById(id);
    }
}
