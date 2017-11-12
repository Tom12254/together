
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import myorder.myorder;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import fudao.fudao;

import appreciation.appreciation;


public class newfudao extends HttpServlet {

	
	public newfudao() {
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
       
        String proString=request.getParameter("pro");
        String fudaoname=request.getParameter("student");
        String contact=request.getParameter("cellnum");
        String starttime=request.getParameter("homenum");
        String address=request.getParameter("region");
       int i=Integer.parseInt(proString);

       
        fudao myorder=new fudao(i,fudaoname,address,contact,starttime);
        sess.save(myorder);
        

        tx.commit();
        sess.close();
        response.sendRedirect("../jsp/showsuccessinf.jsp");
       
		
	
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
