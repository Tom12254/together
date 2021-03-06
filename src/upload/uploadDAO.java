package upload;
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
 * Data access object (DAO) for domain model class upload.
 * @see .upload
  * @author MyEclipse Persistence Tools 
 */

public class uploadDAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(uploadDAO.class);
	//property constants
	public static final String DETAIL = "detail";


    
    public void save(upload transientInstance) {
        log.debug("saving upload instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(upload persistentInstance) {
        log.debug("deleting upload instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public upload findById( java.lang.String id) {
        log.debug("getting upload instance with id: " + id);
        try {
            upload instance = (upload) getSession()
                    .get("upload.upload", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(upload instance) {
        log.debug("finding upload instance by example");
        try {
            List results = getSession()
                    .createCriteria("upload")
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
      log.debug("finding upload instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from upload as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByDetail(Object detail) {
		return findByProperty(DETAIL, detail);
	}
	

	public List findAll() {
		log.debug("finding all upload instances");
		try {
			String queryString = "from upload";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public upload merge(upload detachedInstance) {
        log.debug("merging upload instance");
        try {
            upload result = (upload) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(upload instance) {
        log.debug("attaching dirty upload instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(upload instance) {
        log.debug("attaching clean upload instance");
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
		Query adminuser=sess.createQuery("from upload");
		adminuser.setFirstResult(page);
		adminuser.setMaxResults(15);
		return adminuser.list();
	}
   
	public int count(){
		
		try {
			String queryString = "select count(name) from upload";
			//Query queryObject = getSession().createQuery(queryString);
			return ((Integer)getSession().createQuery(queryString).iterate().next()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
    
    }
}