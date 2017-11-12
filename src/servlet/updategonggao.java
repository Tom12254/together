
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

import bean.opfile;


public class updategonggao extends HttpServlet {

	
	public updategonggao() {
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
		String type=request.getParameter("type");
		String title=request.getParameter("title");
		String txt=request.getParameter("txt");
	    String path="D:/workspace/WebTutor/WebRoot/150jjw/gonggao.htm";
	    String txtpath="D:/workspace/WebTutor/file/txt/show/"+type+".txt";
	    opfile opfile=new opfile();
	    String htmtxt=opfile.readfile(path);
	    String date=new SimpleDateFormat("yyyy-MM-dd").format(Calendar.getInstance().getTime());
	    String common1="1.txt' target=_blank>→ ";
	    String common2="...<";
	    String context="";
	    String a[]=htmtxt.split("/");
		int k=java.lang.Integer.parseInt(type);
	    switch (k) {
		case 1:
			a[8]=common1+title+" "+date+common2;
			break;
        case 2:
        	a[17]=common1+title+" "+date+common2;
			break;
        case 3:
        	a[26]=common1+title+" "+date+common2;
	        break;
        case 4:
        	a[35]=common1+title+" "+date+common2;
	        break;
        case 5:
        	a[44]=common1+title+" "+date+common2;
	        break;
	

		default:
			break;
		}
		
	    for (int i = 0; i < a.length; i++) {
			context+=a[i]+"/";
		}
	    context=context.substring(0,context.length()-1);
		opfile.writefile(path, context, false);//更新公告内容
		opfile.writefile(txtpath, txt, false);//保存新的公告
	    
		
        String filepath=opfile.commonpath+"txt/"+title+".txt";
        String classtype="公告";
        boolean append=false;
       
         opfile.writefile(filepath, txt, append);
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
