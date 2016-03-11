<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.Properties" %>
<%@ page import="javax.mail.Message" %>
<%@ page import="javax.mail.MessagingException" %>
<%@ page import="javax.mail.PasswordAuthentication" %>
<%@ page import="javax.mail.Session" %>
<%@ page import="javax.mail.Transport" %>
<%@ page import="javax.mail.internet.InternetAddress" %>
<%@ page import="javax.mail.internet.MimeMessage" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

final String username = "vaibhavdeore5@gmail.com"; // User name required for authentication
final String password = "deore32deore";
String reciepnt_Id=request.getParameter("email");
String sub=request.getParameter("subject");
String text=request.getParameter("text");
String cc=request.getParameter("cc");
//out.print("Hello All CC"+cc);
//out.println("TO"+reciepnt_Id);

Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", "smtp.gmail.com"); // host address of SMTP mail server
//Here we are sending mail using Gmail thats why smtp.gmail.com

props.put("mail.smtp.port", "465"); //port number of SMTP mail server

props.put("mail.debug", "true");

  props.put("mail.smtp.socketFactory.port", "465"); //port number of SMTP mail server
	
  props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
  props.put("mail.smtp.socketFactory.fallback", "false");
  
  
  
//Create session on SMTP mail server using Username and Password
Session session1 = Session.getInstance(props,
  new javax.mail.Authenticator() {
	protected PasswordAuthentication getPasswordAuthentication() {
		return new PasswordAuthentication(username, password);
	}
  });

try {

	//Create new Email
	Message newmail = new MimeMessage(session1);

	//From address which will display in actual mail. This is not authentication email address.
	newmail.setFrom(new InternetAddress("vaibhavdeore5@gmail.com"));

	//To whom we want to send email
	newmail.setRecipients(Message.RecipientType.TO,InternetAddress.parse(reciepnt_Id));

	//For CARBON COPY recipients
	newmail.setRecipients(Message.RecipientType.CC,InternetAddress.parse(cc));
    
	//Subject Text of mail.
	newmail.setSubject(sub);

	//Body of the mail
	newmail.setText(text);

	Transport.send(newmail);

	System.out.println("Done");
	
	response.sendRedirect("SendMail.jsp");

}
catch (MessagingException e) {
	e.printStackTrace();
}



%>



</body>
</html>