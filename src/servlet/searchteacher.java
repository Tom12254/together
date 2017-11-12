
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

import userinf1.userinf1DAO;


public class searchteacher extends HttpServlet {

	
	public searchteacher() {
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
        String grade=request.getParameter("collegeselect");
        String region=request.getParameter("teach_place");
        String subject=request.getParameter("departmentselect");
        String sex=request.getParameter("gender");

       request.setAttribute("region", region);
       request.setAttribute("subject", subject);
       request.setAttribute("sex", sex);
		if(grade.equals("请选择类别"))
		{
			
			if(region.equals("不限制地区"))
			{
				
				if(sex.equals("不限制性别"))
				{
					request.setAttribute("a", "1");
				}
				else {
					request.setAttribute("a", "2");
				}
			}
			else {
				
				if(sex.equals("不限制性别"))
				{
					request.setAttribute("a", "3");
				}
				else {
					request.setAttribute("a","4");
				}
			}
		}
		
		else {
			if(region.equals("不限制地区"))
			 {
				
					
				  if(sex.equals("不限制性别"))
				  {
					  request.setAttribute("a", "5");
				  }
				  else {
					  request.setAttribute("a", "6");
				  }
			 }
		    else {
					if(sex.equals("不限制性别"))
					  {
						request.setAttribute("a", "7");
					  }
					  else {
						  request.setAttribute("a", "8");
					  }
				 }
			
			
		   }
		request.getRequestDispatcher("../jsp/teacher.jsp").forward(request, response);
		
		
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
