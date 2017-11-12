
package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import myorder.myorder;
import myorder.myorderDAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import userinf0.userinf0;
import userinf0.userinf0DAO;


public class checkorderpay extends HttpServlet {

	public checkorderpay() {
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
            String username=order.getTeacher();
            userinf0DAO userinf0dao=new userinf0DAO();
            userinf0 userinf0=new userinf0();
            userinf0=userinf0dao.findById(username);
           
            request.setAttribute("teacher", order.getTeacher());
            request.setAttribute("student", order.getStudent());
            request.setAttribute("teachercellphone", userinf0.getCellphone());
            request.setAttribute("teachtime", order.getTeachtime());
            
            
          order.setPay("y");
          order.setStatus("yn");
          sess.update(order);  
 	     tx.commit();
 	     sess.close();
 	   
            request.getRequestDispatcher("../jsp/checkorderpay.jsp").forward(request, response);

		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
