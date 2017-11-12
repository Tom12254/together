
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

import bean.sendmail;

import userinf0.userinf0;
import userinf0.userinf0DAO;


public class getpass extends HttpServlet {

	public getpass() {
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
		String username=request.getParameter("loginname");
		String email1=request.getParameter("safemail1");
		String email2=request.getParameter("safemail2");
		String email=email1+"@"+email2;
		//String email="qwqs1314@yahoo.com.cn";
		
		userinf0DAO userinf1dao=new userinf0DAO();
		userinf0 userinf0=new userinf0();
		userinf0=userinf1dao.findById(username);
		String ckemail=userinf0.getEmail();
		String text="用户名："+username+" 密码："+userinf0.getPassword();
		//String text="asdfadfasdfsf";
		String subject="无法获取遗失的密码";
		if(email.equals(ckemail)){
			sendmail sendmail=new sendmail();
			sendmail.send(email, text, subject);
			response.sendRedirect("../jsp/showsuccessinf.jsp");
		}
		else {
			request.setAttribute("msg", subject);
			request.getRequestDispatcher("../jsp/error.jsp").forward(request, response);
		}
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
