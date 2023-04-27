package vn.edu.hcmuaf.fit.dao;

import vn.edu.hcmuaf.fit.db.JDBIConnector;

import java.util.List;
import java.util.Random;
import java.util.stream.Collectors;

public class BlogDAO {
    public static String createBlogID() {
        String numbers = "0123456789";
        StringBuilder stringBuilder = new StringBuilder("CB");
        Random rd = new Random();

        for (int i = 0; i < 3; i++) {
            int index = rd.nextInt(numbers.length());
            char rdC = numbers.charAt(index);
            stringBuilder.append(rdC);
        }
        List<String> listId = JDBIConnector.get().withHandle(
                handle -> handle.createQuery("SELECT id FROM blogs")
                        .mapTo(String.class)
                        .stream()
                        .collect(Collectors.toList()));
        if (listId.contains(stringBuilder.toString())) return createBlogID();
        else return stringBuilder.toString();
    }

    public static void insertBlog(String user_id, String status, String title, String description, String category_id, String image) {
        String id = createBlogID();
        String date = java.time.LocalDateTime.now().toString();
        JDBIConnector.get().withHandle(handle -> {
            handle.createUpdate("insert into blogs (id, user_id, image, created_at, updated_at, status) values(?,?,?,?,?,?)")
                    .bind(0, id)
                    .bind(1, user_id)
                    .bind(2, "http://localhost:8080/thu4_ca2_2023_nhom15_war/images/blog/" + image)
                    .bind(3, date)
                    .bind(4, date)
                    .bind(5, status)
                    .execute();
            handle.createUpdate("insert into blog_details (blog_id, title, description) values (?,?,?)")
                    .bind(0, id)
                    .bind(1, title)
                    .bind(2, description)
                    .execute();
            handle.createUpdate("insert into blog_category (category_id, blog_id) values (?,?)")
                    .bind(0, category_id)
                    .bind(1, id)
                    .execute();
            return true;
        });
    }
}

