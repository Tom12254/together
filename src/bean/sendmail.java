/**
 * 
 */
package bean;
import   java.util.Properties;   
import   javax.mail.*;   
import   javax.mail.internet.*;    
/**
 * @author Administrator
 *
 */
public class sendmail  {
	
	public String   host   =   "smtp.126.com";   
	public String   from   =   "qwqs1314@126.com";
	public String send(String to,String text,String subject){
		try {
			
		
		Properties   props   =   new   Properties();   
	    
		  //   Setup   mail   server   
		  props.put("mail.smtp.host",   host);//����smtp����   
		    
		  props.put("mail.smtp.auth","true");//ʹ��smtp�����֤   
		    
		  //   Get   session   
		  Session   session   =   Session.getDefaultInstance(props,   null);   
		    
		  //   Define   message   
		  MimeMessage   message   =   new   MimeMessage(session);   
		  message.setFrom(new   InternetAddress(from));   
		  message.addRecipient(Message.RecipientType.TO,     
		  new   InternetAddress(to));   
		  message.setSubject(subject);   
		  message.setText(text);   
		  message.saveChanges();   
		    
		  //   Send   message   
		  Transport   transport   =   session.getTransport("smtp");   
		   
		  transport.connect(host,   "qwqs1314","loveQW827");   
		    
		  transport.sendMessage(message,   message.getAllRecipients());   
		     
		  
		
		} catch (Exception e) {
			// TODO: handle exception
		}
		 return "Congratulations,your mail send successfully!";
	}
}
