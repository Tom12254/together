
package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class searchtxt extends HttpServlet {

	public searchtxt() {
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
		
		String name=request.getParameter("article");
		
		
		
		String txtclass=request.getParameter("txtclass");
		
		
		request.setAttribute("name", name);
		request.setAttribute("txtclass", txtclass);
		if(txtclass.equals("кЫспндуб"))request.setAttribute("find", "1");
		else {
			request.setAttribute("find", "2");
		}
		
		
	     request.getRequestDispatcher("../jsp/showpassage.jsp").forward(request, response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
