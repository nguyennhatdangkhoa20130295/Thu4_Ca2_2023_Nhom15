package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.bean.User;
import vn.edu.hcmuaf.fit.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Arrays;

@WebServlet(name = "InsertBlogController", value = "/InsertBlogController")
public class InsertBlogController extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");
        User user = new User(1, "bao123", "$10$3aQdohsFip8tJd9pwjNMrOCvm2hbx..gYlK5iGTsPT/Qg6.kfdUI.","baotaolao9819999@gmail.com");
        int user_id = user.getId();
        String title = request.getParameter("title");
        String description = request.getParameter("description");
        int category_id = Integer.parseInt(request.getParameter("cateid"));
        String image = request.getParameter("image");
        String oldImg = request.getParameter("oldImg");


        BlogService service = new BlogService();

        service.insertBlog(user_id, title, description, category_id, image);
        removeOldImg(oldImg, request);
        copyImage(request, image);
        response.sendRedirect("index.jsp");
    }
    private void removeOldImg(String oldImg, HttpServletRequest request) {
        if (oldImg.length() > 0) {
            String[] splited = oldImg.split(",");
            System.out.println(Arrays.toString(splited));
            for (String split : splited) {
                File fileInServer = new File(request.getServletContext().getAttribute("TEMPBLOG_DIR") + File.separator + split);
                if (fileInServer.exists())
                    fileInServer.delete();
                File fileInLocal = new File(request.getServletContext().getAttribute("FILEBLOG_DIR") + File.separator + split);
                if (fileInLocal.exists())
                    fileInLocal.delete();
            }
        }
    }

    public void copyImage(HttpServletRequest request, String imgFile) throws IOException {
        if (imgFile != null) {
            File file = new File(request.getServletContext().getAttribute("TEMPBLOG_DIR") + File.separator + imgFile);
            FileInputStream fis = new FileInputStream(file);
            File local = new File(request.getServletContext().getAttribute("FILEBLOG_DIR") + File.separator + imgFile);
            FileOutputStream fos = new FileOutputStream(local);
            byte[] bytes = new byte[1024];
            int read;
            while ((read = fis.read(bytes)) != -1) {
                fos.write(bytes, 0, read);
            }
            fis.close();
            fos.close();
        }
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}