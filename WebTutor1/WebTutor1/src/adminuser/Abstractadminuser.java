package adminuser;

import java.sql.*;
import java.util.ArrayList;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import com.opensymphony.xwork2.ActionSupport;

import adminuser.Tool;

@SuppressWarnings("serial")
public class Abstractadminuser extends ActionSupport{
	public String username;
	public String secretkey;
	public String email;
	public String phonenum;
	ArrayList<String> Userlist = new ArrayList<String>(); 
	ArrayList<String> Userlist0 = new ArrayList<String>();
	ArrayList<String> Userlist1 = new ArrayList<String>();
	public ArrayList<String> getUserlist0() {
		return Userlist0;
	}
	public void setUserlist0(ArrayList<String> userlist0) {
		Userlist0 = userlist0;
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
	public String getsecretkey() {
		return secretkey;
	}
	public void setsecretkey(String secretkey) {
		this.secretkey = secretkey;
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
	public String execute() throws UnsupportedEncodingException, SQLException{ 
		
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		//System.out.print("!!!!!!!!!");
		ResultSet rs = stmt.executeQuery("select * from adminuser where username=\""+username+"\""); 
		if(!rs.next()){
      	  return ERROR;
        }
        //String secretkey = rs.getString("secretkey");
        rs = stmt.executeQuery("select * from adminuser"); 
        while (rs.next()) {
	      	if(rs.getString("secretkey").equals(secretkey)){
	      		return SUCCESS;
	      	}
        }
        return ERROR;	
	}
	public String addadminuser() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("insert into adminuser values (\""+username+"\",\""+secretkey+"\",\""+email+"\",\""+phonenum+"\")"); 
		return SUCCESS;
	}
	public String deletead() throws UnsupportedEncodingException, SQLException{
		System.out.println(username);
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("delete from adminuser where username=\""+username+"\"");
		return SUCCESS;
	}
	public String deleteuser0() throws UnsupportedEncodingException, SQLException{
		System.out.println(username);
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("delete from ordinaryuser0 where username=\""+username+"\"");
		return SUCCESS;
	}
	public String deleteuser1() throws UnsupportedEncodingException, SQLException{
		System.out.println(username);
		Statement stmt = Tool.initSQL("webtutor", "root","123z123x123c");
		stmt.executeUpdate("delete from ordinaryuser1 where username=\""+username+"\"");
		return SUCCESS;
	}
	public String preupdate() throws UnsupportedEncodingException, SQLException{
		Statement stmt = Tool.initSQL("webtutor","root","123z123x123c");
		ResultSet rs = stmt.executeQuery("select * from adminuser");
		while (rs.next()){
			Userlist.add(rs.getString("username"));
		 }
		rs = stmt.executeQuery("select * from ordinaryuser0");
		while (rs.next()){
			Userlist0.add(rs.getString("username"));
		 }
		rs = stmt.executeQuery("select * from ordinaryuser1");
		while (rs.next()){
			Userlist1.add(rs.getString("username"));
		 }
		return SUCCESS;
	}
	public ArrayList<String> getUserlist() {
		return Userlist;
	}

	public void setUserlist(ArrayList<String> userlist) {
		this.Userlist = userlist;
	}
}
