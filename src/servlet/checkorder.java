
package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myorder.myorder;
import myorder.myorderDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;




public class checkorder extends HttpServlet {


	public checkorder() {
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
           String ordernum=request.getParameter("ordernum");
           Configuration conf=new Configuration().configure();
	       SessionFactory sf=conf.buildSessionFactory();
	       Session sess=sf.openSession();
	       Transaction tx=sess.beginTransaction();
       myorderDAO userdao=new myorderDAO();
       myorder order=new myorder();
       order=userdao.findById(java.lang.Integer.parseInt(ordernum));
       order.setStatus("y");
         sess.update(order);  
	   tx.commit();
	   sess.close();
	   response.sendRedirect("../jsp/checkorder.jsp");
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
