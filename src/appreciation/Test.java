package appreciation;

import java.util.List;
import java.util.ListIterator;



import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import appreciation.*;


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
	appreciationDAO userdao=new appreciationDAO();
	List users =userdao.findByProperty("score", 0);   
 //   String username="wangwei";
    //System.out.println(userdao.count()+"sadfadf");
	for (ListIterator iterator = users.listIterator(); iterator.hasNext(); )
	{  appreciation user = (appreciation) iterator.next();   

	System.out.println(user.getOrdernum() +"\nAge: " + user.getScore() ); 
//	   if(user.getAdminuser().equals("afu")){
		   
	//	   userdao.delete(user);

		   
	   }
	//}
	// Admin user4 = userdao.findById("atr");
	  //  sess.delete(user4);
	 //int i=userdao.count();
	// userinf0 user=new userinf0("username",2,"password","idcard","cellphone","homenum","qqnum","msnnum","email");
   //  appreciation usesAppreciation=new appreciation(20,80,"this is a good teacher");
	//  sess.save(usesAppreciation);
	 //  System.out.println("succeessful"); 
//	 adminuser u=new adminuser();
//	 u=userdao.findById(username);
//	 System.out.println(u.getUsername());
//	 System.out.println(u.getPassword());

	 tx.commit();
  sess.close();
	}
}
