/**
 * 
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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


import appreciation.appreciation;
import appreciation.appreciationDAO;


public class pingfen extends HttpServlet {

	
	public pingfen() {
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
      String score="";
      String ordernum="";
      Integer ok=0;
      String myordernum="";
      String myscore="";
      String teacher="";
      String username="";
      int scoreI;
      String sizestring=request.getParameter("size");
      int size=java.lang.Integer.parseInt(sizestring);
      for(int k=0;k<size;k++){
      appreciationDAO mydao=new appreciationDAO();
      appreciation app=new appreciation();
      userinf1DAO userdao=new userinf1DAO();
      userinf1 user=new userinf1();
      ok=k+1;
      myordernum="ordernum"+ok.toString();
      teacher="teacher"+ok.toString();
      myscore="score"+ok.toString();
      score=request.getParameter(myscore);
      ordernum=request.getParameter(myordernum);
      username=request.getParameter(teacher);
      user=userdao.findById(username);
      scoreI=user.getScore();
      if(java.lang.Integer.parseInt(score)>=80)scoreI=scoreI+2;
      else if (java.lang.Integer.parseInt(score)>=60) {
		scoreI=scoreI+1;
	  }
      else {
		scoreI=scoreI;
	  }
      user.setScore(scoreI);
      app=mydao.findById(java.lang.Integer.parseInt(ordernum));
      app.setScore(java.lang.Integer.parseInt(score));
      sess.update(app); 
      sess.update(user);
      }
	   tx.commit();
	   sess.close();
		request.getRequestDispatcher("../jsp/studentpingfen.jsp").forward(request, response);
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
