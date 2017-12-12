package mail;

import java.*;
import java.sql.*;
import java.util.Date; 
import java.text.SimpleDateFormat;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import com.opensymphony.xwork2.ActionSupport;

import adminuser.Tool;
@SuppressWarnings("serial")
public class mailsender extends ActionSupport{
	public String sname;
	public String tname;
	public String emails;
	public String subject;
	public String messages;
	
	public int type;
	ArrayList<String> Userlist1 = new ArrayList<String>(); 
	
	public void setType(int type) {
		this.type=type;
	}
	public int getType() {
		return type;
	}
	public ArrayList<String> getUserlist1() {
		return Userlist1;
	}

	public void setUserlist1(ArrayList<String> userlist1) {
		Userlist1 = userlist1;
	}
	public String getsname() {
		return sname;
	}
	public void setsname(String sname) {
		this.sname = sname;
	}
	public String gettname() {
		return tname;
	}
	public void settname(String tname) {
		this.tname = tname;
	}
	public String getemails() {
		return emails;
	}
	public void setemails(String emails) {
		this.emails = emails;
	}
	public String getsubject() {
		return subject;
	}
	public void setsubject(String subject) {
		this.subject = subject;
	}
	public String getmessages() {
		return messages;
	}
	public void setmessages(String messages) {
		this.messages = messages;
	}
	public String execute() throws UnsupportedEncodingException, SQLException, MessagingException{
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		 String qm ="wjy1234"; //您的QQ密码
		 /* String qm ="hibicygdqayobchf"; //您的QQ密码 */
		 String tu = "163.com"; //你邮箱的后缀域名
		 String tto = emails; //接收邮件的邮箱
		 String ttitle=tname+"老师您好，这是您的一名家教中心学生"+sname+"给您的评价:";

		String tcontent =messages;
		/*System.out.println(messages+"111111111111111111111111");*/
		Properties props=new Properties();
		Properties properties = new Properties();
		/*properties.put("username", "m18846130620@163.com");*/
		/*properties.put("password", "wjy1234");*/
		properties.setProperty("mail.host", "smtp.163.com");
		properties.setProperty("mail.transport.protocol", "smtp");
		properties.setProperty("mail.smtp.auth", "true");
		properties.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		/* properties.setProperty("mail.smtp.port", "465");
		properties.setProperty("mail.smtp.socketFactory.port", "465");
		 */
		/*props.put("mail.smtp.localhost", "mail.digu.com");*/ 
		props.put("mail.smtp.host","smtp."+tu);//发信的主机，这里我填写的是我们公司的主机！可以不用修改！
		props.put("mail.smtp.auth","true");
		/*props.put("mail.smtp.port", "25");*/
		Session s=Session.getInstance(props);
		s.setDebug(true);
		MimeMessage message=new MimeMessage(s);
		//给消息对象设置发件人/收件人/主题/发信时间
		InternetAddress from=new InternetAddress("m18846130620@"+tu); //这里的115798090 改为您发信的QQ号
		message.setFrom(from);
		InternetAddress to=new InternetAddress(tto);
		/*message.addRecipients(MimeMessage.RecipientType.CC, InternetAddress.parse("m18846130620@163.com"));
		message.addRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(tto));*/
		message.setRecipient(Message.RecipientType.TO,to);
		message.setSubject(ttitle);
		message.setSentDate(new Date());
		//给消息对象设置内容
		BodyPart mdp=new MimeBodyPart();//新建一个存放信件内容的BodyPart对象
		mdp.setContent(tcontent,"text/html;charset=utf-8");//给BodyPart对象设置内容和格式/编码方式
		Multipart mm=new MimeMultipart();//新建一个MimeMultipart对象用来存放BodyPart对
		//象(事实上可以存放多个)
		mm.addBodyPart(mdp);//将BodyPart加入到MimeMultipart对象中(可以加入多个BodyPart)
		message.setContent(mm);//把mm作为消息对象的内容
		message.saveChanges();
		Transport transport=s.getTransport("smtp");
		transport.connect("smtp."+tu,"m18846130620",qm); //这里的115798090也要修改为您的QQ号码
		transport.sendMessage(message,message.getAllRecipients());
		transport.close();
		return SUCCESS;
	}
	
}
