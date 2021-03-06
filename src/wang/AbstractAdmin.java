package wang;

/**
 * AbstractAdmin generated by MyEclipse Persistence Tools
 */

public abstract class AbstractAdmin implements java.io.Serializable {

	// Fields

	private String adminuser;

	private String adminpass;

	// Constructors

	/** default constructor */
	public AbstractAdmin() {
	}

	/** minimal constructor */
	public AbstractAdmin(String adminuser) {
		this.adminuser = adminuser;
	}

	/** full constructor */
	public AbstractAdmin(String adminuser, String adminpass) {
		this.adminuser = adminuser;
		this.adminpass = adminpass;
	}

	// Property accessors

	public String getAdminuser() {
		return this.adminuser;
	}

	public void setAdminuser(String adminuser) {
		this.adminuser = adminuser;
	}

	public String getAdminpass() {
		return this.adminpass;
	}

	public void setAdminpass(String adminpass) {
		this.adminpass = adminpass;
	}

}