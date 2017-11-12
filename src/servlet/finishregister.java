/**
 * 
 */
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

import userinf1.userinf1;
import userinf1.userinf1DAO;

/**
 * @author Administrator
 *
 */
public class finishregister extends HttpServlet {

	
	public finishregister() {
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
		request.setCharacterEncoding("GBK");
		response.setCharacterEncoding( "GBK");
		Configuration conf=new Configuration().configure();
	       SessionFactory sf=conf.buildSessionFactory();
	       Session sess=sf.openSession();
	       Transaction tx=sess.beginTransaction();
        String username=request.getParameter("username");
        String classgrade=request.getParameter("collegeselect");
        String subject=request.getParameter("departmentselect");
        String region=request.getParameter("teach_place");
        String sex=request.getParameter("gender");
        String video=request.getParameter("video");
       
		userinf1 user=new userinf1(username,classgrade,subject,region,sex,video,0);
		sess.save(user);
		tx.commit();
	    sess.close();
	    response.sendRedirect("../jsp/showsuccessinf.jsp");
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
