package vn.edu.hcmuaf.fit.bean;

import java.io.Serializable;

public class Blog implements Serializable {
    int id;
    int user_id;
    String created_at;
    String updated_at;
    int status;
    String title;
    String description;
    int category_id;
    String name;

    String image;

    public Blog() {
    }

    public Blog(int id, int user_id, String created_at, String updated_at, int status, String title, String description, int category_id, String name, String image) {
        this.id = id;
        this.user_id = user_id;
        this.created_at = created_at;
        this.updated_at = updated_at;
        this.status = status;
        this.title = title;
        this.description = description;
        this.category_id = category_id;
        this.name = name;
        this.image = image;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getimage() {
        return image;
    }

    public void setimage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Blog{" +
                "id='" + id + '\'' +
                ", user_id='" + user_id + '\'' +
                ", created_at='" + created_at + '\'' +
                ", updated_at='" + updated_at + '\'' +
                ", status='" + status + '\'' +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", category_id='" + category_id + '\'' +
                ", name='" + name + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
