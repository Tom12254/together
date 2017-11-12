package adminuser;

import java.util.List;
import java.util.ListIterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import servlet.neworder;

import adminuser.*;;

public class Test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
System.out.println("asdf");
	
	Configuration conf=new Configuration().configure();
	SessionFactory sf=conf.buildSessionFactory();
	Session sess=sf.openSession();
	Transaction tx=sess.beginTransaction();
//	adminuserDAO userdao=new adminuserDAO();
//	List users =userdao.findAll();   
 //   String username="wangwei";
    //System.out.println(userdao.count()+"sadfadf");
	//for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
	//{  adminuser user = (adminuser) iterator.next();   

	//System.out.println(user.getUsername() +"\nAge: " + user.getPassword() ); 
//	   if(user.getAdminuser().equals("afu")){
		   
	//	   userdao.delete(user);

		   
	 //  }
	//}
	// Admin user4 = userdao.findById("atr");
	  //  sess.delete(user4);
	 
	// userinf0 user=new userinf0("username",2,"password","idcard","cellphone","homenum","qqnum","msnnum","email");

	 //  sess.save(user);
	 //  System.out.println("succeessful"); 
//	 adminuser u=new adminuser();
//	 u=userdao.findById(username);
//	 System.out.println(u.getUsername());
//	 System.out.println(u.getPassword());
//	 int i=0;
	// i=userdao.exist("wangwei");
    // System.out.println("asdfsfd"+i);
	 adminuser adminuser=new adminuser("zeng","123","001","granted","email","n","safasf");
	 sess.save(adminuser);
	 tx.commit();
  sess.close();
	}
}
