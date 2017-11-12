package text;
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
 * Data access object (DAO) for domain model class text.
 * @see .text
  * @author MyEclipse Persistence Tools 
 */

public class textDAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(textDAO.class);
	//property constants
	public static final String URL = "url";
	public static final String CLASS_ = "class_";


    
    public void save(text transientInstance) {
        log.debug("saving text instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(text persistentInstance) {
        log.debug("deleting text instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public text findById( java.lang.String id) {
        log.debug("getting text instance with id: " + id);
        try {
            text instance = (text) getSession()
                    .get("text.text", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(text instance) {
        log.debug("finding text instance by example");
        try {
            List results = getSession()
                    .createCriteria("text")
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
      log.debug("finding text instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from text as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByUrl(Object url) {
		return findByProperty(URL, url);
	}
	
	public List findByClass_(Object class_) {
		return findByProperty(CLASS_, class_);
	}
	 public List findtxtclass(String txtclass,int page){
		 try{
		   String queryString = "from text as model where model.class_= ?";
		     Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, txtclass);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(16);
			 return queryObject.list();
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }

	public List findAll() {
		log.debug("finding all text instances");
		try {
			String queryString = "from text";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public text merge(text detachedInstance) {
        log.debug("merging text instance");
        try {
            text result = (text) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(text instance) {
        log.debug("attaching dirty text instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(text instance) {
        log.debug("attaching clean text instance");
        try {
            getSession().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public List pagediv(int page){
	    Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Query adminuser=sess.createQuery("from text");
		adminuser.setFirstResult(page);
		adminuser.setMaxResults(16);
		return adminuser.list();
	}
   
	public int count(){
		
		try {
			String queryString = "select count(name) from text";
			//Query queryObject = getSession().createQuery(queryString);
			return ((Integer)getSession().createQuery(queryString).iterate().next()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
    
    }
}
