/**
 * 
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author Administrator
 *
 */
public class logout extends HttpServlet {

	
	public logout() {
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
		HttpSession session = request.getSession();
		//session.removeAttribute("adminuser");
		//session.removeAttribute("userinf0");
		//session.removeAttribute("type");
		//request.removeAttribute("username");
		//request.removeAttribute("password");
		//request.removeAttribute("userinf0");
		//request.removeAttribute("orders");
		response.sendRedirect("../150jjw.jsp");
	}

	
	
	public void init() throws ServletException {
		// Put your code here
	}

}
