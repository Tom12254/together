package fudao;
// default package
// Generated by MyEclipse Persistence Tools



/**
 * fudao generated by MyEclipse Persistence Tools
 */
public class fudao extends Abstractfudao implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public fudao() {
    }

	/** minimal constructor */
    public fudao(String name, String address, String phone) {
        super(name, address, phone);        
    }
    
    /** full constructor */
    public fudao(int pro,String name, String address, String phone, String starttime) {
        super(pro,name, address, phone, starttime);        
    }
   
}