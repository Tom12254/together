package userinf0;

import java.util.List;
import java.util.ListIterator;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import wang.Admin;

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
	userinf0DAO userdao=new userinf0DAO();
//	List users =userdao.findAll();   
    String username="username";
    //System.out.println(userdao.count()+"sadfadf");
//	for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
	//{  userinf0 user = (userinf0) iterator.next();   

//	System.out.println(user.getUsername() +"\nAge: " + user.getPassword() ); 
//	   if(user.getAdminuser().equals("afu")){
		   
	//	   userdao.delete(user);

		   
//	   }
	//}
	// Admin user4 = userdao.findById("atr");
	  //  sess.delete(user4);
	 
	// userinf0 user=new userinf0("username",2,"password","idcard","cellphone","homenum","qqnum","msnnum","email");

	 //  sess.save(user);
	 //  System.out.println("succeessful"); 
     userinf0 u=new userinf0();
	 u=userdao.findById(username);
	 System.out.println(u.getUsername());
	 System.out.println(u.getIdcard());
     u.setIdcard("idcard1");
     sess.update(u);
     System.out.println("sdfasf");
	 tx.commit();
  sess.close();
	}
}
