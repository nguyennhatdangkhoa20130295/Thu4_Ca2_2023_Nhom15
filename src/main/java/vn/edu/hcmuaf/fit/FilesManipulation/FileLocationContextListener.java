package vn.edu.hcmuaf.fit.FilesManipulation;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.File;
import java.util.ArrayList;

@WebListener
public class FileLocationContextListener implements ServletContextListener, HttpSessionListener, HttpSessionAttributeListener {

    public FileLocationContextListener() {
    }

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String rootPath = System.getProperty("catalina.home");
        String realRootPath = rootPath.substring(0, rootPath.lastIndexOf("\\"));
        ServletContext ctx = sce.getServletContext();
        String blogRelativePath = ctx.getInitParameter("tempblog.dir");
        String realBlogPath = ctx.getInitParameter("saveblog.dir");
        File tempblog = new File(rootPath + File.separator + "webapps" + File.separator + blogRelativePath);
        File saveblog = new File(realRootPath + File.separator + realBlogPath);
        if (!tempblog.exists())
            tempblog.mkdirs();
        if (!saveblog.exists())
            saveblog.mkdirs();
        ctx.setAttribute("FILES_DIR_TEMPBLOG", tempblog);
        ctx.setAttribute("FILES_DIR_FILEBLOG", saveblog);
        ctx.setAttribute("TEMPBLOG_DIR", rootPath + File.separator + "webapps" + File.separator + blogRelativePath);
        ctx.setAttribute("FILEBLOG_DIR", realRootPath + File.separator + realBlogPath);

    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        /* This method is called when the servlet Context is undeployed or Application Server shuts down. */
    }

    @Override
    public void sessionCreated(HttpSessionEvent se) {
        /* Session is created. */
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        /* Session is destroyed. */
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is added to a session. */
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is removed from a session. */
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent sbe) {
        /* This method is called when an attribute is replaced in a session. */
    }
}