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

//    6. BlogService gọi đến BlogDAO để thực hiện thêm bài viết mới
    public static void insertBlog(int user_id, String title, String description, int category_id,String image){
        new BlogDAO().insertBlog(user_id, title, description, category_id, image);
    }
}
