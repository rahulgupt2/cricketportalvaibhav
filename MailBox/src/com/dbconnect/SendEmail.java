package com.dbconnect;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendEmail {
   public static void main(String[] args) {
      // Recipient's email ID needs to be mentioned.
      String to = "rahulgupt2@gmail.com";

      // Sender's email ID needs to be mentioned
      String from = "vaibhavdeore5@gmail.com";
      final String username = "vaibhavdeore5@gmail.com";//change accordingly
      final String password = "deore32deore5";//change accordingly

      // Assuming you are sending email through relay.jangosmtp.net
      String host = "smtp.gmail.com";

      Properties props = new Properties();
      props.put("mail.smtp.auth", "true");
      
      props.put("mail.debug", "true");
     // props.put("mail.smtp.starttls.enable", "true");
      props.put("mail.smtp.host", host);
      props.put("mail.smtp.port", "465");
      props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
      props.put("mail.smtp.socketFactory.fallback", "false");
      

      // Get the Session object.
      Session session = Session.getInstance(props,
         new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username, password);
	   }
         });

      try {
	   // Create a default MimeMessage object.
	   Message message = new MimeMessage(session);
	
	   // Set From: header field of the header.
	   message.setFrom(new InternetAddress(from));
	
	   // Set To: header field of the header.
	   message.setRecipients(Message.RecipientType.TO,
               InternetAddress.parse(to));
	
	   // Set Subject: header field
	   message.setSubject("Testing Subject");
	
	   // Now set the actual message
	   message.setText("Hello, this is sample for to check send " +
		"email using JavaMailAPI ");

	   // Send message
	   Transport.send(message);

	   System.out.println("Sent message successfully....");

      } catch (MessagingException e) {
       System.out.println(e);
      }
   }
}