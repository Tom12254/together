package upload;
// default package



/**
 * Abstractupload generated by MyEclipse Persistence Tools
 */

public abstract class Abstractupload  implements java.io.Serializable {


    // Fields    

     private String name;
     private String detail;


    // Constructors

    /** default constructor */
    public Abstractupload() {
    }

	/** minimal constructor */
    public Abstractupload(String name) {
        this.name = name;
    }
    
    /** full constructor */
    public Abstractupload(String name, String detail) {
        this.name = name;
        this.detail = detail;
    }

   
    // Property accessors

    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getDetail() {
        return this.detail;
    }
    
    public void setDetail(String detail) {
        this.detail = detail;
    }
   








}