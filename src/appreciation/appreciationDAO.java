package appreciation;
// default package

import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.hibernate.LockMode;
import org.hibernate.Query;
import org.hibernate.criterion.Example;
import wang.BaseHibernateDAO;

/**
 * Data access object (DAO) for domain model class appreciation.
 * @see .appreciation
  * @author MyEclipse Persistence Tools 
 */

public class appreciationDAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(appreciationDAO.class);
	//property constants
	public static final String SCORE = "score";
	public static final String APPRECIATION = "appreciation";


    
    public void save(appreciation transientInstance) {
        log.debug("saving appreciation instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(appreciation persistentInstance) {
        log.debug("deleting appreciation instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public appreciation findById( java.lang.Integer id) {
        log.debug("getting appreciation instance with id: " + id);
        try {
            appreciation instance = (appreciation) getSession()
                    .get("appreciation.appreciation", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(appreciation instance) {
        log.debug("finding appreciation instance by example");
        try {
            List results = getSession()
                    .createCriteria("appreciation")
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
      log.debug("finding appreciation instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from appreciation as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByScore(Object score) {
		return findByProperty(SCORE, score);
	}
	
	public List findByAppreciation(Object appreciation) {
		return findByProperty(APPRECIATION, appreciation);
	}
	

	public List findAll() {
		log.debug("finding all appreciation instances");
		try {
			String queryString = "from appreciation";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public appreciation merge(appreciation detachedInstance) {
        log.debug("merging appreciation instance");
        try {
            appreciation result = (appreciation) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(appreciation instance) {
        log.debug("attaching dirty appreciation instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(appreciation instance) {
        log.debug("attaching clean appreciation instance");
        try {
            getSession().lock(instance, LockMode.NONE);
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
     
}