package adminuser;
// default package

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Example;

import wang.BaseHibernateDAO;

/**
 * Data access object (DAO) for domain model class adminuser.
 * @see .adminuser
  * @author MyEclipse Persistence Tools 
 */

public class adminuserDAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(adminuserDAO.class);
	//property constants
	public static final String PASSWORD = "password";
	public static final String CELLPHONE = "cellphone";
	public static final String GRANTED = "granted";
	public static final String EMAIL = "email";
	public static final String SEX = "sex";
	public static final String REGION = "region";


    
    public void save(adminuser transientInstance) {
        log.debug("saving adminuser instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(adminuser persistentInstance) {
        log.debug("deleting adminuser instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public adminuser findById( java.lang.String id) {
        log.debug("getting adminuser instance with id: " + id);
        try {
            adminuser instance = (adminuser) getSession()
                    .get("adminuser.adminuser", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(adminuser instance) {
        log.debug("finding adminuser instance by example");
        try {
            List results = getSession()
                    .createCriteria("adminuser")
                    .add(Example.create(instance))
            .list();
            log.debug("find by example successful, result size: " + results.size());
            return results;
        } catch (RuntimeException re) {
            log.error("find by example failed", re);
            throw re;
        }
    }    
    
    public List findByProperty(String propertyName, Object value) {
      log.debug("finding adminuser instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from adminuser as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByPassword(Object password) {
		return findByProperty(PASSWORD, password);
	}
	
	public List findByCellphone(Object cellphone) {
		return findByProperty(CELLPHONE, cellphone);
	}
	
	public List findByGranted(Object granted) {
		return findByProperty(GRANTED, granted);
	}
	
	public List findByEmail(Object email) {
		return findByProperty(EMAIL, email);
	}
	
	public List findBySex(Object sex) {
		return findByProperty(SEX, sex);
	}
	
	public List findByRegion(Object region) {
		return findByProperty(REGION, region);
	}
	

	public List findAll() {
		log.debug("finding all adminuser instances");
		try {
			String queryString = "from adminuser";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public adminuser merge(adminuser detachedInstance) {
        log.debug("merging adminuser instance");
        try {
            adminuser result = (adminuser) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(adminuser instance) {
        log.debug("attaching dirty adminuser instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(adminuser instance) {
        log.debug("attaching clean adminuser instance");
        try {
            getSession().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    public int exist(String id){
    	
    	int i=1;
    	adminuserDAO userdao=new adminuserDAO();
   	    adminuser usermeAdminuser=null;
        usermeAdminuser=userdao.findById(id);
        if(usermeAdminuser==null)i=0;
    	return i;
    }
    public adminuser checkuser(String username, String password) {
		adminuserDAO adminuserdao=new adminuserDAO();
		adminuser adminuser=adminuserdao.findById(username);
		if(adminuser==null) return null;
		if(adminuser.getPassword().equals(password)){
			return adminuser;
		}
		return null;
	}
}