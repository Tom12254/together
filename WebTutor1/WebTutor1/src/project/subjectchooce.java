package project;

import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import com.opensymphony.xwork2.ActionSupport;

import adminuser.Tool;

@SuppressWarnings("serial")
public class subjectchooce extends ActionSupport{
	public String subject;
	public String status;
	public String username;
	public String classgrade;
	public String payment;
	public String time;
	public String IDcardnum;
	public String studentname;
	public String IDproject;
	public String getIDproject() {
		return IDproject;
	}
	public void setIDproject(String iDproject) {
		IDproject = iDproject;
	}
	public String getStudentname() {
		return studentname;
	}
	public void setStudentname(String studentname) {
		this.studentname = studentname;
	}
	ArrayList<String> subjectlist = new ArrayList<String>(); 
	ArrayList<String> stu_subjectlist = new ArrayList<String>(); 
	ArrayList<String> choosesubject = new ArrayList<String>(); 
	public String getIDcardnum() {
		return IDcardnum;
	}
	public void setIDcardnum(String IDcardnum) {
		this.IDcardnum = IDcardnum;
	}
	public ArrayList<String> getStu_subjectlist() {
		return stu_subjectlist;
	}
	public void setStu_subjectlist(ArrayList<String> stu_subjectlist) {
		this.stu_subjectlist = stu_subjectlist;
	}
	public ArrayList<String> getChoosesubject() {
		return choosesubject;
	}
	public void setChoosesubject(ArrayList<String> choosesubject) {
		this.choosesubject = choosesubject;
	}
	public ArrayList<String> getSubjectlist() {
		return subjectlist;
	}
	public void setSubjectlist(ArrayList<String> subjectlist) {
		this.subjectlist = subjectlist;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getClassgrade() {
		return classgrade;
	}
	public void setClassgrade(String classgrade) {
		this.classgrade = classgrade;
	}
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String execute_teacher() throws UnsupportedEncodingException, SQLException{ 
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser1 where IDcardnum=\""+IDcardnum+"\"");
		/*if(!rs.next()){
      	  return ERROR;
        }*/
		String username=null;
		if (rs.next()) {
			username = rs.getString("username");
        	System.out.println(username+"33");
        }
        rs = stmt.executeQuery("select * from project"); 
        while (rs.next()) {
	      	if(rs.getString("username").equals(username)){
	      		subjectlist.add(rs.getString("subject"));
	      		subjectlist.add(rs.getString("classgrade"));
	      		subjectlist.add(rs.getString("studentname"));
	      		subjectlist.add(rs.getString("time"));
	      		subjectlist.add(rs.getString("payment"));
	      		subjectlist.add(rs.getString("status"));
	      	}
        }
		return SUCCESS;
	}
	public String execute_student() throws UnsupportedEncodingException, SQLException{ 
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		//System.out.println("55555");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser0 where IDcardnum=\""+IDcardnum+"\""); 
		/*if(!rs.next()){
      	  return ERROR;
        }*/
		//System.out.println(IDcardnum+"533");
		String username=null;
		if (rs.next()) {
			username = rs.getString("username");
        	//System.out.println(username+"33");
        }
        rs = stmt.executeQuery("select * from project"); 
        while (rs.next()) {
	      	if(rs.getString("studentname").equals(username)){
	      		stu_subjectlist.add(rs.getString("subject"));
	      		stu_subjectlist.add(rs.getString("classgrade"));
	      		stu_subjectlist.add(rs.getString("username"));
	      		stu_subjectlist.add(rs.getString("time"));
	      		stu_subjectlist.add(rs.getString("payment"));
	      		stu_subjectlist.add(rs.getString("status"));
	      	}
        }
		return SUCCESS;
	}
	public String addproject() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser1 where IDcardnum=\""+IDcardnum+"\"");
		//IDcardnum=rs.getString("IDcardnum");
		System.out.println(IDcardnum+"666");
		stmt.executeUpdate("insert into project (subject,classgrade,username,time,payment,status,studentname) values (\""+subject+"\",\""+classgrade+"\",\""+
				username+"\",\""+time+"\",\""+payment+"\",\""+status+"\",\""+studentname+"\")"); 
		return SUCCESS;
	}
	public String delete() throws UnsupportedEncodingException, SQLException{
		System.out.println(username);
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("delete from project where subject=\""+subject+"\"");
		return SUCCESS;
	}
	public String search() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from project where username=\""+username+"\"");
		if(rs.next()){
			System.out.println(username);
			username=rs.getString("username");
			classgrade = rs.getString("classgrade");
			subject=rs.getString("subject");
			time=rs.getString("time");
			payment=rs.getString("payment");
			status=rs.getString("status");
			return SUCCESS;
		}
		//System.out.println("id:"+AuthorId);
		return SUCCESS;
	}
	public String searchproject() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser0 where IDcardnum=\""+IDcardnum+"\"");
		if(rs.next()){IDcardnum=rs.getString("IDcardnum");
		System.out.println(IDcardnum+"66");}
		ResultSet rs1 = stmt.executeQuery("select * from project where subject=\""+subject+"\" and classgrade=\""+classgrade+"\" and status=\"未选\"");
		while (rs1.next()) {
	      		choosesubject.add(rs1.getString("subject"));
	      		choosesubject.add(rs1.getString("classgrade"));
	      		choosesubject.add(rs1.getString("username"));
	      		choosesubject.add(rs1.getString("time"));
	      		choosesubject.add(rs1.getString("payment"));
	      		choosesubject.add(rs1.getString("status"));
        }
		return SUCCESS;
	}
	public String s_coursechoose() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser0 where IDcardnum=\""+IDcardnum+"\"");
		//System.out.println(type);
		if(rs.next()){
			studentname=rs.getString("username");
		}
		//String statue = "确认中";
		//ResultSet rs = stmt.executeQuery("select * from project where subject=\""+subject+"\" and classgrade=\""+classgrade+"\" and username=\""+username+"\"");
		stmt.executeUpdate("UPDATE project SET status=\"确认中\" , studentname = \""+studentname+"\" where subject=\""+subject+"\" and classgrade=\""+classgrade+"\" and username=\""+username+"\"");
		return SUCCESS;
	}
	public String t_coursemanage() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser1 where IDcardnum=\""+IDcardnum+"\"");
		//System.out.println(type);
		if(rs.next()){
			username=rs.getString("username");
		}
		//String statue = "确认中";
		//ResultSet rs = stmt.executeQuery("select * from project where subject=\""+subject+"\" and classgrade=\""+classgrade+"\" and username=\""+username+"\"");
		stmt.executeUpdate("UPDATE project SET status=\"已选\" where  subject=\""+subject+"\" and classgrade=\""+classgrade+"\" and username=\""+username+"\" and studentname=\""+studentname+"\"");
		return SUCCESS;
	}
	public String returnindex() throws UnsupportedEncodingException, SQLException{ 
			
			Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
			//System.out.print("!!!!!!!!!");
			ResultSet rs = stmt.executeQuery("select * from ordinaryuser1 where IDcardnum=\""+IDcardnum+"\""); 
			//System.out.println("id:"+username+"999");
	        //String secretkey = rs.getString("secretkey");
			//IDcardnum=rs.getString("IDcardnum");
	        //rs = stmt.executeQuery("select * from ordinaryuser1"); 
	        /*while (rs.next()) {
		      		//Userlist1.add(rs.getString("username"));
		      		IDcardnum=rs.getString("IDcardnum");
		      		
		      		return SUCCESS;
	        }*/
	        
	        return SUCCESS;	
		}
	public String returnindex0() throws UnsupportedEncodingException, SQLException{ 
		
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		//System.out.print("!!!!!!!!!");
		ResultSet rs = stmt.executeQuery("select * from ordinaryuser0 where IDcardnum=\""+IDcardnum+"\""); 
		//System.out.println("id:"+username+"999");
        //String secretkey = rs.getString("secretkey");
		//IDcardnum=rs.getString("IDcardnum");
        //rs = stmt.executeQuery("select * from ordinaryuser1"); 
        /*while (rs.next()) {
	      		//Userlist1.add(rs.getString("username"));
	      		IDcardnum=rs.getString("IDcardnum");
	      		
	      		return SUCCESS;
        }*/
        
        return SUCCESS;	
	}
}
