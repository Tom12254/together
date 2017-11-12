
package servlet;

import java.io.File;
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

import bean.opfile;

import text.text;
import text.textDAO;


public class deletxt extends HttpServlet {

	
	public deletxt() {
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
		    response.setCharacterEncoding("GBK");
            String pathString=request.getParameter("myurl");
		    String name=pathString.substring(31, pathString.indexOf("."));
		    Configuration conf=new Configuration().configure();
			SessionFactory sf=conf.buildSessionFactory();
			Session sess=sf.openSession();
			Transaction tx=sess.beginTransaction(); 
			textDAO textdao=new textDAO();
			text text=textdao.findById(name);
			sess.delete(text);
			tx.commit();
			sess.close();
			File file=new File(pathString);
		    if(file.exists())file.delete();
	        response.sendRedirect("../jsp/showpassage.jsp");
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
