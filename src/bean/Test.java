/**
 * 
 */
package bean;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.ListIterator;

import myorder.myorder;
import myorder.myorderDAO;

import adminuser.adminuser;
import adminuser.adminuserDAO;
import appreciation.appreciation;
import appreciation.appreciationDAO;
import userinf0.userinf0DAO;
import userinf1.userinf1;
import userinf1.userinf1DAO;
import   java.util.Properties;   
import   javax.mail.*;   
import   javax.mail.internet.*;    

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import fudao.fudao;
import fudao.fudaoDAO;


/**
 * @author Administrator
 *
 */
public class Test {

	/**
	 * @param args
	 */
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		/*
		List<myorder> myorder=new ArrayList<myorder>();
        myorderDAO myorderdao=new myorderDAO();
        fudaoDAO appreciationdao=new fudaoDAO();
        List appreciations=appreciationdao.findAll();

		  
			for (ListIterator iterator = appreciations.listIterator(); iterator.hasNext(); )
			{  fudao oneapp = (fudao) iterator.next(); 
			  myorder onemyorder=myorderdao.findById(oneapp.getOrdernum()); 
			   myorder.add(onemyorder);
			   System.out.println(oneapp.getName());
			   
			   
			}   

  		   System.out.println(myorder.size());
  		 System.out.println(myorder.get(0).getOrdernum());
  	 */
//		String date=new SimpleDateFormat("yyyyMMdd").format(Calendar.getInstance().getTime()); 
//		System.out.println(date);
//		String string="ssadf我爱你，猫头头afj";
//		if (string.contains("我爱你")) {
//			System.out.println(string);
//		}
//		opfile my=new opfile();
//		String fileString=my.readfile("D:/workspace/WebTutor/file/txt/语文.txt");
//		System.out.println(fileString);
		
//		 sendmail sendmail=new sendmail();
//		 String string=sendmail.send("qwqs1314@yahoo.com.cn", "safjasfdk", "获取密码");
//		System.out.println(string);
//		 opfile opfile=new opfile();
//		 String string=opfile.readfile("D:/workspace/WebTutor/WebRoot/150jjw/gonggao.htm");
//		 String a[]=string.split("/");
//		 String am="asdassafasfafasffn";
//		 System.out.println(a[8]);
//		 System.out.println(a[17]);
//		 System.out.println(a[26]);
//		 System.out.println(a[35]);
//		 System.out.println(a[44]);
//        am=am.substring(0,am.length()-1);
//        System.out.println(am);
		    Configuration conf=new Configuration().configure();
	       SessionFactory sf=conf.buildSessionFactory();
	       Session sess=sf.openSession();
	       Transaction tx=sess.beginTransaction();
	       fudao myorder=new fudao(2,"qwersa","asdfasf","asdfasdf","asdfasdf");
	       sess.save(myorder);
	       tx.commit();
	        sess.close();
	        System.out.println("asdf");
  	   }
      
	}


