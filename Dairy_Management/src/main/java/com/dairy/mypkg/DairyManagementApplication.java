package com.dairy.mypkg;

import java.util.Properties;
import java.util.Random;

import javax.mail.*;
import javax.mail.internet.*;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class DairyManagementApplication {
	
	String from;  
	public static DairyManagementApplication globalObj=new DairyManagementApplication();
	
	public DairyManagementApplication getObj() {
		return globalObj;
	}
	public String getFrom() {
		return this.from;
	}
	int OTP;
	public int getOTP(DairyManagementApplication obj)
	{
		return obj.OTP;
	}
    public static void main(String[] args) {
        SpringApplication.run(DairyManagementApplication.class, args);
        globalObj.from = "mrkk391@gmail.com";
    }
    

    public void sentMessage(String message, String subject, String to, String from) {
    	 String host = "smtp.gmail.com";
         Properties properties = System.getProperties();
         properties.put("mail.smtp.host", host);
         properties.put("mail.smtp.port", "465");
         properties.put("mail.smtp.ssl.enable", "true");
         properties.put("mail.smtp.auth", "true");

         Session session = Session.getInstance(properties, new Authenticator() {
             @Override
             protected PasswordAuthentication getPasswordAuthentication() {
                 return new PasswordAuthentication("mrkk391@gmail.com", "bzww gupd mpkg zatc");
             }

         });
         session.setDebug(true);
         MimeMessage m = new MimeMessage(session);
         try {
             m.setFrom(from);
             m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
             m.setSubject(subject);
             m.setText(message);
             Transport.send(m);

             System.out.println("Sent success...................");

         } catch (Exception e) {
             e.printStackTrace();
         }
		
	}
    public void sendLoginRequestEmail(String message, String subject, String to, String from) {
    	
    	globalObj.generateOTP();
        String host = "smtp.gmail.com";
        Properties properties = System.getProperties();
        properties.put("mail.smtp.host", host);
        properties.put("mail.smtp.port", "465");
        properties.put("mail.smtp.ssl.enable", "true");
        properties.put("mail.smtp.auth", "true");

        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("mrkk391@gmail.com", "bzww gupd mpkg zatc");
            }
        });
        session.setDebug(true);
        MimeMessage m = new MimeMessage(session);
        try {
            m.setFrom(from);
            m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
            m.setSubject(subject);
            
            int otp = globalObj.getOTP(globalObj);
            String htmlContent = "<html><body>" +
                                    "<p>" + message + "</p>" +
                                    "<p>"+ subject  +"</p>"+
                                    "<p>Your OTP is: <strong>" + otp + "</strong></p>" +
                                 "</body></html>";
            m.setContent(htmlContent, "text/html");

            // Send the email
            Transport.send(m);

            System.out.println("Sent login request successfully to " + to);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

   
    private void generateOTP() {
    
        int numbers[]= {1,2,3,4,5,6,7,8,9,0};
        int otp=0;
        Random random = new Random();
        for(int i=numbers.length-1;i>0;i--)
        {
        	int index=random.nextInt(i+1);
        	
        	int temp=numbers[index];
        	numbers[index]=numbers[i];
        	numbers[i]=temp;
        	
        	if(otp>100000) {
        		break;
        	}
        	
        	otp=otp*10+temp;
        }
        System.out.println(otp);
        globalObj.OTP=otp;
    }

    public void sendReceiptEmail(String orderId, String email, String name, double totalPrice, String address, String productNames, String mobileNumber) {
        // Compose your email message here using the provided details
        String message = "Dear " + name + ",\n\n";
        message += "Thank you for your purchase. Here is your receipt:\n\n";
        message += "Order ID: " + orderId + "\n";
        message += "Total Price: $" + totalPrice + "\n";
        message += "Delivery Address: " + address + "\n";
        message += "Products: " + productNames + "\n\n";
        message += "For any queries, contact us at kapsekedar07@example.com\n\n";
        message += "Best Regards,\nThe Dairy Management Team";

       
        sentMessage(message, "Receipt for Order #" + orderId, email, from);
    

    
    }
}
