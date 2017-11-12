/**
 * 
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import text.text;
import text.textDAO;

import bean.opfile;

/**
 * @author Administrator
 *
 */
public class savetxt extends HttpServlet {

	
	public savetxt() {
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
		  String date=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
		  opfile myfile=new opfile();
		  String writer=request.getParameter("username");
          String content=request.getParameter("txt")+"\n"+"作者："+writer+"日期："+date;
          String title=request.getParameter("title");
          String path=myfile.commonpath+"txt/"+title+".txt";
          String classtype=request.getParameter("type");
          boolean append=false;
         
           myfile.writefile(path, content, append);
           Configuration conf=new Configuration().configure();
	       SessionFactory sf=conf.buildSessionFactory();
	       Session sess=sf.openSession();
	       Transaction tx=sess.beginTransaction();

	       text text=new text(title,path,classtype);
	       sess.save(text);
	       tx.commit();
	       sess.close();
          response.sendRedirect("../jsp/showsuccessinf.jsp");
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
