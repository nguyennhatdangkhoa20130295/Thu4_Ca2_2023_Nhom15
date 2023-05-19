package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.bean.Blog;
import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class BlogDAO {

//    8. Chuyển về giao diện trang chủ và cập nhật bài viết mới lên đầu trang
    public static List<Blog> listBlog(){
        List<Blog> list = JDBIConnector.get().withHandle(handle -> {
            return handle.createQuery("select b.id, b.user_id, b.image, b.created_at, b.updated_at, bd.title, bd.description from blogs b inner join blog_details bd on b.id = bd.id order by b.id desc")
                    .mapToBean(Blog.class).stream().collect(Collectors.toList());
        });
        return list;
    }

//    7. BlogDAO thêm dữ liệu bài viết mới vào Database
    public static void insertBlog(int user_id, String title, String description, int category_id, String image) {
        String date = java.time.LocalDateTime.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            int blogID = handle.createQuery("SELECT MAX(id) FROM blogs").mapTo(Integer.class).one();
            handle.createUpdate("insert into blogs (id, user_id, image, created_at, updated_at, status) values(?,?,?,?,?,?)")
                    .bind(0, blogID+1)
                    .bind(1, user_id)
                    .bind(2, "http://localhost:8080/thu4_ca2_2023_nhom15_war/images/blog/"+ image)
                    .bind(3, date)
                    .bind(4, date)
                    .bind(5, 1)
                    .execute();
            handle.createUpdate("insert into blog_details (id, title, description) values (?,?,?)")
                    .bind(0, blogID+1)
                    .bind(1, title)
                    .bind(2, description)
                    .execute();
            handle.createUpdate("insert into blog_category (category_id, blog_id) values (?,?)")
                    .bind(0, category_id)
                    .bind(1, blogID+1)
                    .execute();
            return true;
        });
    }

    public static void main(String[] args) {
        System.out.println(listBlog());
    }
}

