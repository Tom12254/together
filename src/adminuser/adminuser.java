package adminuser;
// default package
// Generated by MyEclipse Persistence Tools



/**
 * adminuser generated by MyEclipse Persistence Tools
 */
public class adminuser extends Abstractadminuser implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public adminuser() {
    }

	/** minimal constructor */
    public adminuser(String username, String password, String cellphone) {
        super(username, password, cellphone);        
    }
    
    /** full constructor */
    public adminuser(String username, String password, String cellphone, String granted, String email, String sex, String region) {
        super(username, password, cellphone, granted, email, sex, region);        
    }
   
}