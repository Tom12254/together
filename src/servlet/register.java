package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import userinf0.userinf0;
import userinf0.userinf0DAO;

public class register extends HttpServlet {

	
	public register() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Configuration conf=new Configuration().configure();
	       SessionFactory sf=conf.buildSessionFactory();
	       Session sess=sf.openSession();
	       Transaction tx=sess.beginTransaction();


       String username=request.getParameter("username");
       String password=request.getParameter("password");
       String cellphone=request.getParameter("phonenum");
       String homenum=request.getParameter("homenum");
       String qqnum=request.getParameter("qqnum");
       String msnnum=request.getParameter("msnnum");
       String email=request.getParameter("safemail1")+"@"+request.getParameter("safemail2");
       String idcard=request.getParameter("idnum");
       userinf0 user=new userinf0(username,password,idcard,cellphone,homenum,qqnum,msnnum,email);
       
       
	   sess.save(user);
	   tx.commit();
	   sess.close();
	    response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
        out.println("<script language='javascript'  src='../js/myalert.js' charset='GBK'> </script>");
		out.println("<HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("<BODY onLoad='showalert1()'>");
		out.println("  </BODY>");
		out.println("</HTML>");
		out.flush();
		out.close();
//	   response.sendRedirect("../jsp/registersucc.jsp");
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
