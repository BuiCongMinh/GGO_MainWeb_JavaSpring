package testprojectspring.com.example.testspring.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;

@Entity
@Table(name = "business_partner")
public class BusinessPartner {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String name_partner;
    private String image;

    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(pattern = "dd/MM/yyyy HH:mm:ss") // Định dạng cho dữ liệu đầu vào
    private Date date;

    @PrePersist
    protected void onCreate() {
        date = new Date(); // Gán thời gian hiện tại khi tạo mới
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName_partner() {
        return name_partner;
    }

    public void setName_partner(String name_partner) {
        this.name_partner = name_partner;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "BusinessPartner [id=" + id + ", name_partner=" + name_partner + ", image=" + image + ", date=" + date
                + "]";
    }

}
