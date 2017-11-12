package wang;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import myorder.myorder;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import text.text;


public class Test {
	
	public   static   void   main(String[]   args)   
	  {   
		//String pathString="D:/workspace/WebTutor/file/txt/"+"ÍõÌì²Å"+".txt";
	  //  String name=pathString.substring(31, pathString.indexOf("."));
	   // String nameString=a[1];
	 //   String b[]=nameString.split(".");
	  //  String name=b[1];
	  //  System.out.println(name);
	//    System.out.println(name);
	    Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction(); 
//		AdminDAO userinf1dao=new AdminDAO();
//		 List userList=userinf1dao.findAll();
//       //  int i=userList.size();
//			List<Admin> orders=new ArrayList<Admin>();
//			  
//				for (ListIterator iterator = userList.listIterator(); iterator.hasNext(); )
//				{  Admin oneorder = (Admin) iterator.next();   
//				 
//				   //System.out.println(oneorder.get);
//				   System.out.println(oneorder.getAdminuser());
//				   System.out.println(oneorder.getAdminpass());
//				}
		  text text=new text("wang","asdfasdf","asdfsafd");
	       sess.save(text);
			 tx.commit();
		  sess.close();
////		textDAO textdao=new textDAO();
////		text text=textdao.findById(name);
////		System.out.println(text.getName());
//	   // File file=new File(pathString);
//	   // if(file.exists())file.delete();
//	//	opfile myfileOpfile=new opfile();
//		//myfileOpfile.delete(pathString);
		  System.out.println("safdsaf");
	  }   

 

}
