package appreciation;
// default package
// Generated by MyEclipse Persistence Tools



/**
 * appreciation generated by MyEclipse Persistence Tools
 */
public class appreciation extends Abstractappreciation implements java.io.Serializable {

    // Constructors

    /** default constructor */
    public appreciation() {
    }

	/** minimal constructor */
    public appreciation(Integer ordernum) {
        super(ordernum);        
    }
    
    /** full constructor */
    public appreciation(Integer ordernum, Integer score, String appreciation) {
        super(ordernum, score, appreciation);        
    }
   
}
