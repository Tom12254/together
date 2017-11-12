package userinf0;
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

import adminuser.adminuser;
import adminuser.adminuserDAO;
import wang.BaseHibernateDAO;

/**
 * Data access object (DAO) for domain model class userinf0.
 * @see .userinf0
  * @author MyEclipse Persistence Tools 
 */

public class userinf0DAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(userinf0DAO.class);
	//property constants

	public static final String PASSWORD = "password";
	public static final String IDCARD = "idcard";
	public static final String CELLPHONE = "cellphone";
	public static final String HOMEPHONE = "homephone";
	public static final String QQNUM = "qqnum";
	public static final String MSNNUM = "msnnum";
	public static final String EMAIL = "email";


    
    public void save(userinf0 transientInstance) {
        log.debug("saving userinf0 instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(userinf0 persistentInstance) {
        log.debug("deleting userinf0 instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public userinf0 findById( java.lang.String id) {
        log.debug("getting userinf0 instance with id: " + id);
        try {
            userinf0 instance = (userinf0) getSession()
                    .get("userinf0.userinf0", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(userinf0 instance) {
        log.debug("finding userinf0 instance by example");
        try {
            List results = getSession()
                    .createCriteria("userinf0")
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
      log.debug("finding userinf0 instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from userinf0 as model where model." 
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
	
	public List findByIdcard(Object idcard) {
		return findByProperty(IDCARD, idcard);
	}
	
	public List findByCellphone(Object cellphone) {
		return findByProperty(CELLPHONE, cellphone);
	}
	
	public List findByHomephone(Object homephone) {
		return findByProperty(HOMEPHONE, homephone);
	}
	
	public List findByQqnum(Object qqnum) {
		return findByProperty(QQNUM, qqnum);
	}
	
	public List findByMsnnum(Object msnnum) {
		return findByProperty(MSNNUM, msnnum);
	}
	
	public List findByEmail(Object email) {
		return findByProperty(EMAIL, email);
	}
	

	public List findAll() {
		log.debug("finding all userinf0 instances");
		try {
			String queryString = "from userinf0";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public userinf0 merge(userinf0 detachedInstance) {
        log.debug("merging userinf0 instance");
        try {
            userinf0 result = (userinf0) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(userinf0 instance) {
        log.debug("attaching dirty userinf0 instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
      public int count(){
		
		try {
			String queryString = "select count(idcard) from userinf0";
			//Query queryObject = getSession().createQuery(queryString);
			return ((Integer)getSession().createQuery(queryString).iterate().next()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
    
    }
    
    public void attachClean(userinf0 instance) {
        log.debug("attaching clean userinf0 instance");
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
	        userinf0DAO userdao=new userinf0DAO();
	        userinf0 userinf0=null;
            userinf0=userdao.findById(id);
            if(userinf0==null)i=0;
	       return i;
    }
    
    public userinf0 checkuser(String username, String password) {
		userinf0DAO userinf0dao=new userinf0DAO();
		userinf0 userinf0=userinf0dao.findById(username);
       if(userinf0==null)return null;
       else{
		if(userinf0.getPassword().equals(password)){
			return userinf0;
		}
        else {
		return null;
	     }
       }
	}

}