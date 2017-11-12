package fudao;
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
 * Data access object (DAO) for domain model class fudao.
 * @see .fudao
  * @author MyEclipse Persistence Tools 
 */

public class fudaoDAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(fudaoDAO.class);
	//property constants
	public static final String NAME = "name";
	public static final String ADDRESS = "address";
	public static final String PHONE = "phone";
	public static final String STARTTIME = "starttime";


    
    public void save(fudao transientInstance) {
        log.debug("saving fudao instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(fudao persistentInstance) {
        log.debug("deleting fudao instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public fudao findById( java.lang.Integer id) {
        log.debug("getting fudao instance with id: " + id);
        try {
            fudao instance = (fudao) getSession()
                    .get("fudao", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(fudao instance) {
        log.debug("finding fudao instance by example");
        try {
            List results = getSession()
                    .createCriteria("fudao")
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
      log.debug("finding fudao instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from fudao as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByName(Object name) {
		return findByProperty(NAME, name);
	}
	
	public List findByAddress(Object address) {
		return findByProperty(ADDRESS, address);
	}
	
	public List findByPhone(Object phone) {
		return findByProperty(PHONE, phone);
	}
	
	public List findByStarttime(Object starttime) {
		return findByProperty(STARTTIME, starttime);
	}
	

	public List findAll() {
		log.debug("finding all fudao instances");
		try {
			String queryString = "from fudao";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public fudao merge(fudao detachedInstance) {
        log.debug("merging fudao instance");
        try {
            fudao result = (fudao) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(fudao instance) {
        log.debug("attaching dirty fudao instance");
        try {
            getSession().saveOrUpdate(instance);
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
		Query adminuser=sess.createQuery("from fudao");
		adminuser.setFirstResult(page);
		adminuser.setMaxResults(10);
		return adminuser.list();
	}
      public int count(){
		
		try {
			String queryString = "select count(name) from fudao";
			//Query queryObject = getSession().createQuery(queryString);
			return ((Integer)getSession().createQuery(queryString).iterate().next()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
    
    }
      
    public void attachClean(fudao instance) {
        log.debug("attaching clean fudao instance");
        try {
            getSession().lock(instance, LockMode.NONE);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
}