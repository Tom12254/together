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
		 String qm ="wjy1234"; //����QQ����
		 /* String qm ="hibicygdqayobchf"; //����QQ���� */
		 String tu = "163.com"; //������ĺ�׺����
		 String tto = emails; //�����ʼ�������
		 String ttitle=tname+"��ʦ���ã���������һ���ҽ�����ѧ��"+sname+"����������:";

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
		props.put("mail.smtp.host","smtp."+tu);//���ŵ���������������д�������ǹ�˾�����������Բ����޸ģ�
		props.put("mail.smtp.auth","true");
		/*props.put("mail.smtp.port", "25");*/
		Session s=Session.getInstance(props);
		s.setDebug(true);
		MimeMessage message=new MimeMessage(s);
		//����Ϣ�������÷�����/�ռ���/����/����ʱ��
		InternetAddress from=new InternetAddress("m18846130620@"+tu); //�����115798090 ��Ϊ�����ŵ�QQ��
		message.setFrom(from);
		InternetAddress to=new InternetAddress(tto);
		/*message.addRecipients(MimeMessage.RecipientType.CC, InternetAddress.parse("m18846130620@163.com"));
		message.addRecipients(MimeMessage.RecipientType.TO, InternetAddress.parse(tto));*/
		message.setRecipient(Message.RecipientType.TO,to);
		message.setSubject(ttitle);
		message.setSentDate(new Date());
		//����Ϣ������������
		BodyPart mdp=new MimeBodyPart();//�½�һ������ż����ݵ�BodyPart����
		mdp.setContent(tcontent,"text/html;charset=utf-8");//��BodyPart�����������ݺ͸�ʽ/���뷽ʽ
		Multipart mm=new MimeMultipart();//�½�һ��MimeMultipart�����������BodyPart��
		//��(��ʵ�Ͽ��Դ�Ŷ��)
		mm.addBodyPart(mdp);//��BodyPart���뵽MimeMultipart������(���Լ�����BodyPart)
		message.setContent(mm);//��mm��Ϊ��Ϣ���������
		message.saveChanges();
		Transport transport=s.getTransport("smtp");
		transport.connect("smtp."+tu,"m18846130620",qm); //�����115798090ҲҪ�޸�Ϊ����QQ����
		transport.sendMessage(message,message.getAllRecipients());
		transport.close();
		return SUCCESS;
	}
	
}
