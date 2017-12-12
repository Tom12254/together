package ordinaryuser0;

import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import com.opensymphony.xwork2.ActionSupport;

import adminuser.Tool;


@SuppressWarnings("serial")
public class Abstractuser0 extends ActionSupport{
	public String username;
	public String IDcardnum;
	public String loadsecret;
	public String subject;
	public String classgrade;
	public String sex;
	public String email;
	public String phonenum;
	public String QQnum;
	public String region;
	public String score;
	public int type;
	ArrayList<String> Userlist0 = new ArrayList<String>();
	
	public void setType(int type) {
		this.type=type;
	}
	public int getType() {
		return type;
	}
	public ArrayList<String> getUserlist0() {
		return Userlist0;
	}
	public void setUserlist0(ArrayList<String> userlist0) {
		Userlist0 = userlist0;
	}
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
	}
	public String getsex() {
		return sex;
	}
	public void setsex(String sex) {
		this.sex = sex;
	}
	public String getIDcardnum() {
		return IDcardnum;
	}
	public void setIDcardnum(String IDcardnum) {
		this.IDcardnum = IDcardnum;
	}
	public String getloadsecret() {
		return loadsecret;
	}
	public void setloadsecret(String loadsecret) {
		this.loadsecret = loadsecret;
	}
	public String getsubject() {
		return subject;
	}
	public void setsubject(String subject) {
		this.subject = subject;
	}
	public String getclassgrade() {
		return classgrade;
	}
	public void setclassgrade(String classgrade) {
		this.classgrade = classgrade;
	}
	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getphone() {
		return phonenum;
	}
	public void setphone(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getQQnum() {
		return QQnum;
	}
	public void setQQnum(String QQnum) {
		this.QQnum = QQnum;
	}
	public String execute() throws UnsupportedEncodingException, SQLException{ 
		
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		//System.out.print("!!!!!!!!!");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser0 where username=\""+username+"\""); 
		if(!rs.next()){
      	  return ERROR;
        }
        //String secretkey = rs.getString("secretkey");
		rs = stmt.executeQuery("select * from ordinaryuser0");
		while (rs.next()){
			Userlist0.add(rs.getString("username"));
			//System.out.print(Userlist0);
		 }
        rs = stmt.executeQuery("select * from ordinaryuser0"); 
        while (rs.next()) {
	      	if(rs.getString("loadsecret").equals(loadsecret) & rs.getString("username").equals(username)){
	      		IDcardnum=rs.getString("IDcardnum");
	      		loadsecret=rs.getString("loadsecret");
	      		QQnum=rs.getString("QQnum");
	      		
	      		return SUCCESS;
	      	}
        }
        return ERROR;	
	}
	public String addordinaryuser0() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("insert into ordinaryuser0 values (\""+username+"\",\""+email+"\",\""+
				IDcardnum+"\",\""+QQnum+"\",\""+loadsecret+"\",\""+phonenum+"\")"); 
		return SUCCESS;
	}
	public String delete() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("delete from ordinaryuser0 where username=\""+username+"\"");
		return SUCCESS;
	}
	public String search() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser1"); 
		while(rs.next()){
			if(rs.getString("username").equals(username)){
				classgrade = rs.getString("classgrade");
				subject = rs.getString("subject");
				sex = rs.getString("sex");
				region = rs.getString("region");
				score = rs.getString("score");
				email = rs.getString("email");
				QQnum = rs.getString("QQnum");
				phonenum = rs.getString("phonenum");
			}
		}
		return SUCCESS;
	}
	public String update() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		if(type==0)
		{
		    stmt.executeUpdate("UPDATE ordinaryuser0 SET username = \""+username+"\", loadsecret = \""+loadsecret+"\",email=\""+email+"\",phonenum=\""+phonenum+"\",QQnum=\""+QQnum+"\" WHERE IDcardnum=\""+IDcardnum+"\"");
			return SUCCESS;
		}
		else if(type==1)
		{
			ResultSet rs = stmt.executeQuery("select * from ordinaryuser0 where IDcardnum=\""+IDcardnum+"\"");
			//System.out.println(type);
			if(rs.next()){
				username=rs.getString("username");
				email = rs.getString("email");
				loadsecret=rs.getString("loadsecret");
				QQnum=rs.getString("QQnum");
				phonenum=rs.getString("phonenum");
				IDcardnum=rs.getString("IDcardnum");
				return SUCCESS;
			}
			
		}
		//System.out.println("id:"+AuthorId);
		return SUCCESS;
	}
	
}
