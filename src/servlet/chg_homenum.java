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


public class chg_homenum extends HttpServlet {

	
	public chg_homenum() {
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
       String homenum=request.getParameter("newhomenum");
       String username=request.getParameter("username");
       userinf0DAO userdao=new userinf0DAO();
       userinf0 user=new userinf0();
       user=userdao.findById(username);
       user.setHomephone(homenum);
         sess.update(user);  
    
	   tx.commit();
	   sess.close();
	   response.sendRedirect("../jsp/showsuccessinf.jsp");
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
