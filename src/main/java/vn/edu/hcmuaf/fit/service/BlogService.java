package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.dao.BlogDAO;

public class BlogService {

    private static BlogService blogService;
    public static BlogService getInstance() {
        if (blogService == null) {
            blogService = new BlogService();
        }
        return blogService;
    }

    public static void insertBlog(String user_id, String status, String title, String description, String category_id,String image){
        new BlogDAO().insertBlog(user_id, status, title, description, category_id, image);
    }
}
