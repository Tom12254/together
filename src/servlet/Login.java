package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import userinf0.userinf0;
import userinf0.userinf0DAO;

import adminuser.adminuser;
import adminuser.adminuserDAO;



public class Login extends HttpServlet {

	
	public Login() {
		super();
	}

	
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
       // doPost(request, response); 
		
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		String username="";
		String password="";
		for (int m = 0; m < 2; m++) {
			
			username = request.getParameter("username");
			password = request.getParameter("password");
		}
		
		
   
        adminuser adminuser=new adminuser();
  	    userinf0 userinf0=new userinf0();
  		adminuserDAO adminuserdao=new adminuserDAO();
  		userinf0DAO userinf0dao=new userinf0DAO();
  		int j=0;
  		int i=0;
  		try {
  			i=userinf0dao.exist(username);
  		} catch (Exception e) {
  			
  		}
  
  		try {
  			j=adminuserdao.exist(username);
  		} catch (Exception e) {
  			// TODO: handle exception
  		}
  		
          if(i!=0){//登录的是普通用户
          	userinf0=userinf0dao.checkuser(username, password);
          	if(userinf0!=null){
          		
          		session.setAttribute("userinf0", userinf0);
          		session.setAttribute("type",2);
          		response.sendRedirect("../jsp/userinf0.jsp");
          		 return;

          	}
          	else {
          		response.sendRedirect("../jsp/registersucc.jsp");
          		 return;

  			}
          }
  		if(j!=0){//login user is admin
  			adminuser=adminuserdao.checkuser(username, password);
  			if(adminuser!=null){
  				
  				session.setAttribute("adminuser", adminuser);
  				session.setAttribute("type",1);
  				response.sendRedirect("../jsp/adminuser.jsp");
  				 return;

  			}
  			else {
          		response.sendRedirect("../jsp/registersucc.jsp");
          		 return;

  			}
  		}
  		if(i==0&&j==0){
  			response.sendRedirect("../jsp/registersucc.jsp");
  			 return;

  		}
  		
		
		
				
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
