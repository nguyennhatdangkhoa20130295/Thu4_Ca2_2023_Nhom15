package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.bean.UserRegister;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;
import java.util.Random;

public class MailService {
    private static MailService mailService;

    public static MailService getInstance() {
        if (mailService == null) {
            mailService = new MailService();
        }
        return mailService;
    }
    // 5.2.6.2.1.1 Tạo mã xác thực qua phương thức getRandom().
    public String getRandom(){
        Random ran = new Random();
        int number = ran.nextInt(999999);

        return String.format("%06d", number);
    }
    public boolean sendEmail(UserRegister userRegister){
        boolean test = false;
        String fromEmail = "technologysharing.ts@gmail.com";
        String password = "sqjydepbwrhedznh";
        String toEmail = userRegister.getEmail();
        String body = "<tbody><tr>\n" +
                "    <td align=\"center\" valign=\"top\" id=\"m_-81702646094012949bodyCell\" style=\"margin:0;padding:0;font-family:Helvetica,Arial,sans-serif;height:100%!important\">\n" +
                "        <div style=\"background-color:#ffffff;color:#202123;padding:27px 20px 0 15px\">\n" +
                "            <p style=\"text-align:left;margin:0\">\n" +
                "                <img src=\"https://lh3.googleusercontent.com/a/AGNmyxb2RZXGr08CLNOOHcyNHgX25rWXMI9HgYJ7I6bq=s432\" width=\"560\" height=\"168\" title=\"\" style=\"width:140px;height:auto;border:0;line-height:100%;outline:none;text-decoration:none\">\n" +
                "            </p>\n" +
                "        </div>\n" +
                "        <div style=\"background-color:#ffffff;color:#353740;padding:40px 20px;text-align:left;line-height:1.5\">\n" +
                "            <h1 style=\"color:#202123;font-size:32px;line-height:40px;margin:0 0 20px\">Xác minh địa chỉ email của bạn</h1>\n" +
                "\n" +
                "            <p style=\"font-size:16px;line-height:24px\">\n" +
                "                Để tiếp tục thiết lập tài khoản Technology, vui lòng xác minh rằng đây là địa chỉ email của bạn bằng cách nhập mã:\n" +
                "                <strong style=\"color:#ff0000;\">"+userRegister.getCode()+"</strong>\n" +
                "            </p>\n" +
                "        </div>\n" +
                "    </td>\n" +
                "</tr>\n" +
                "</tbody>";
        try{
            Properties properties = new Properties();
            properties.setProperty("mail.smtp.host", "smtp.gmail.com");
            properties.setProperty("mail.smtp.port", "587");
            properties.setProperty("mail.smtp.auth", "true");
            properties.setProperty("mail.smtp.starttls.enable", "true");
            properties.put("mail.smtp.socketFactory.port", "587");
            properties.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");

            // get session
            Session session = Session.getInstance(properties, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(fromEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(toEmail));
            message.setSubject("Xác nhận email đăng ký tài khoản Technology");
            message.setContent(body, "text/html; charset=UTF-8");

            Transport.send(message);
            System.out.println("Đã gửi email thành công!");
            test=true;

        }catch (Exception e){
            e.printStackTrace();
        }

        return test;
    }
}