package ordinaryuser1;

import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import com.opensymphony.xwork2.ActionSupport;

import adminuser.Tool;


@SuppressWarnings("serial")
public class Abstractuser1 extends ActionSupport{
	public String username;
	public String IDcardnum;
	public String loadsecret;
	public String sex;
	public String region;
	public String score;
	public String email;
	public String phonenum;
	public String QQnum;
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
	public String getusername() {
		return username;
	}
	public void setusername(String username) {
		this.username = username;
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
	public String getsex() {
		return sex;
	}
	public void setsex(String sex) {
		this.sex = sex;
	}
	public String getregion() {
		return region;
	}
	public void setregion(String region) {
		this.region = region;
	}
	public String getscore() {
		return score;
	}
	public void setscore(String score) {
		this.score = score;
	}
	public String execute() throws UnsupportedEncodingException, SQLException{ 
		
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		//System.out.print("!!!!!!!!!");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser1 where username=\""+username+"\""); 
		if(!rs.next()){
      	  return ERROR;
        }
		//System.out.println("id:"+username+"999");
        //String secretkey = rs.getString("secretkey");
        rs = stmt.executeQuery("select * from ordinaryuser1"); 
        while (rs.next()) {
	      	if(rs.getString("loadsecret").equals(loadsecret) & rs.getString("username").equals(username)){
	      		//Userlist1.add(rs.getString("username"));
	      		IDcardnum=rs.getString("IDcardnum");
	      		//System.out.println("id:"+IDcardnum+"999");
	      		loadsecret=rs.getString("loadsecret");
	      		
	      		return SUCCESS;
	      	}
        }
        
        return ERROR;	
	}
	public String addordinaryuser1() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("insert into ordinaryuser1 values (\""+username+"\",\""+IDcardnum+"\",\""+
				loadsecret+"\",\""+sex+"\",\""+region+"\",\""+score+"\",\""+email+"\",\""+phonenum+"\",\""+QQnum+"\")"); 
		return SUCCESS;
	}
	public String delete() throws UnsupportedEncodingException, SQLException{
		System.out.println(username);
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("delete from ordinaryuser1 where username=\""+username+"\"");
		return SUCCESS;
	}
	public String update() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		if(type==0) {
		stmt.executeUpdate("UPDATE ordinaryuser1 SET username = \""+username+"\", loadsecret = \""+loadsecret+"\",sex=\""+sex+"\",email=\""+email+"\",QQnum=\""+QQnum+"\",phonenum=\""+phonenum+"\" WHERE IDcardnum=\""+IDcardnum+"\"");
		return SUCCESS;}
		else if (type==1) {
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser1 where IDcardnum=\""+IDcardnum+"\"");
		System.out.println("id:"+IDcardnum);
		if(rs.next()){
			System.out.println(username);
			username=rs.getString("username");
			email = rs.getString("email");
			loadsecret=rs.getString("loadsecret");
			QQnum=rs.getString("QQnum");
			phonenum=rs.getString("phonenum");
			IDcardnum=rs.getString("IDcardnum");
			sex=rs.getString("sex");
			region=rs.getString("region");
			score=rs.getString("score");
			return SUCCESS;
		}}
		//System.out.println("id:"+IDcardnum);
		return SUCCESS;
	}
	
}
