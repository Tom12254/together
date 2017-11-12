
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

import userinf1.userinf1;
import userinf1.userinf1DAO;

import appreciation.appreciation;

import myorder.myorder;


public class neworder extends HttpServlet {

	
	public neworder() {
		super();
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
        String ordernum=request.getParameter("ordernum");
        String teacher=request.getParameter("teacher");
        String student=request.getParameter("student");
        String cellnum=request.getParameter("cellnum");
        String homenum=request.getParameter("homenum");
        String region=request.getParameter("region");
        String teachtime=request.getParameter("teachtime");
        String days=request.getParameter("days");
        int myordernum=java.lang.Integer.parseInt(ordernum);
        int mydays=java.lang.Integer.parseInt(days);
        userinf1DAO userinf1dao=new userinf1DAO();
        userinf1 userinf1=userinf1dao.findById(teacher);
        int fee=0;
        if(userinf1.getClassgrade().equals("学前教育"))fee=30;
        if(userinf1.getClassgrade().equals("小学教育"))fee=40;
        if(userinf1.getClassgrade().equals("初中教育"))fee=40;
        if(userinf1.getClassgrade().equals("高中教育"))fee=50;
        if(userinf1.getClassgrade().equals("音乐舞蹈"))fee=80;
        if(userinf1.getClassgrade().equals("棋牌竞技"))fee=70;
        if(userinf1.getClassgrade().equals("竞赛辅导"))fee=60;
        if(userinf1.getClassgrade().equals("其他类别"))fee=50;
        String date=new SimpleDateFormat("yyyyMMddHHmmss").format(Calendar.getInstance().getTime()); 
        myorder myorder=new myorder(myordernum,teacher,student,cellnum,homenum,date,"n",region,teachtime,"n",fee,mydays);
        sess.save(myorder);
        appreciation app=new appreciation(myordernum,0,"n");
        sess.save(app);
        tx.commit();
        sess.close();
        response.sendRedirect("../jsp/showsuccessinf.jsp");
       
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
