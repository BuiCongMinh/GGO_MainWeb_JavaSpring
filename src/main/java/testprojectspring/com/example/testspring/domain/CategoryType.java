package testprojectspring.com.example.testspring.domain;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;

@Entity
@Table(name = "category_type")
public class CategoryType {
    private long id;
    private String name_category;
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

    public String getName_category() {
        return name_category;
    }

    public void setName_category(String name_category) {
        this.name_category = name_category;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    @Override
    public String toString() {
        return "CategoryType [id=" + id + ", name_category=" + name_category + ", date=" + date + "]";
    }

}
