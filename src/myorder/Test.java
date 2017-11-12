/**
 * 
 */
package myorder;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import userinf0.userinf0;
import userinf0.userinf0DAO;

/**
 * @author Administrator
 *
 */
public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		System.out.println("asdf");
		
	
    
       String teacher="wanglaji";
        Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Transaction tx=sess.beginTransaction(); 
        myorderDAO orderdao=new myorderDAO();
       List order=orderdao.firstNstatus();

		List<myorder> orders=new ArrayList<myorder>();
		  
			for (ListIterator iterator = order.listIterator(); iterator.hasNext(); )
			{  myorder oneorder = (myorder) iterator.next();   
			  oneorder.getCellphone();
			   System.out.println(oneorder.getTeacher());
			   System.out.println(oneorder.getStatus());
			   System.out.println(oneorder.getRegion());
			}

		 tx.commit();
	  sess.close();
	}

}
