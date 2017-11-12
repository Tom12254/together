package userinf1;
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

import com.sun.java_cup.internal.internal_error;

import wang.BaseHibernateDAO;

/**
 * Data access object (DAO) for domain model class userinf1.
 * @see .userinf1
  * @author MyEclipse Persistence Tools 
 */

public class userinf1DAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(userinf1DAO.class);
	//property constants
	public static final String CLASSGRADE = "classgrade";
	public static final String SUBJECT = "subject";
	public static final String REGION = "region";
	public static final String SEX = "sex";
	public static final String VIDEO = "video";
	public static final String SCORE = "score";


    
    public void save(userinf1 transientInstance) {
        log.debug("saving userinf1 instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(userinf1 persistentInstance) {
        log.debug("deleting userinf1 instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public userinf1 findById( java.lang.String id) {
        log.debug("getting userinf1 instance with id: " + id);
        try {
            userinf1 instance = (userinf1) getSession()
                    .get("userinf1.userinf1", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(userinf1 instance) {
        log.debug("finding userinf1 instance by example");
        try {
            List results = getSession()
                    .createCriteria("userinf1")
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
      log.debug("finding userinf1 instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from userinf1 as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}

	public List findByClassgrade(Object classgrade) {
		return findByProperty(CLASSGRADE, classgrade);
	}
	
	public List findBySubject(Object subject) {
		return findByProperty(SUBJECT, subject);
	}
	
	public List findByRegion(Object region) {
		return findByProperty(REGION, region);
	}
	
	public List findBySex(Object sex) {
		return findByProperty(SEX, sex);
	}
	
	public List findByVideo(Object video) {
		return findByProperty(VIDEO, video);
	}
	
	public List findByScore(Object score) {
		return findByProperty(SCORE, score);
	}
	

	public List findAll() {
		log.debug("finding all userinf1 instances");
		try {
			String queryString = "from userinf1";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	public List top10(){
	    Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Query userinf1=sess.createQuery("from userinf1");
		userinf1.setFirstResult(0);
		userinf1.setMaxResults(10);
		return userinf1.list();
		
	}
    public userinf1 merge(userinf1 detachedInstance) {
        log.debug("merging userinf1 instance");
        try {
            userinf1 result = (userinf1) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }

    public void attachDirty(userinf1 instance) {
        log.debug("attaching dirty userinf1 instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(userinf1 instance) {
        log.debug("attaching clean userinf1 instance");
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
		Query adminuser=sess.createQuery("from userinf1");
		adminuser.setFirstResult(page);
		adminuser.setMaxResults(25);
		return adminuser.list();
	}
   
	public int count(){
		
		try {  
			String queryString = "select count(username) from userinf1";
			//Query queryObject = getSession().createQuery(queryString);
			return ((Integer)getSession().createQuery(queryString).iterate().next()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
    
    }
   public List findby0001(String sex,int page){
	 try{
	   String queryString = "from userinf1 as model where model.sex= ?";
	     Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, sex);
		 queryObject.setFirstResult(page);
		 queryObject.setMaxResults(25);
		 return queryObject.list();
    } catch (RuntimeException re) {
       log.error("find by sexfailed", re);
       throw re;
    }
	
   }
   public List findby0010(String region,int page){
		 try{
		   String queryString = "from userinf1 as model where model.region= ?";
		     Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, region);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(25);
			 return queryObject.list();
			
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }
   public List findby0011(String sex,String region,int page){
		 try{
		   String queryString = "from userinf1 as model where model.sex= ? and model.region= ?";
		     Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, sex);
			 queryObject.setParameter(1, region);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(25);
			 return queryObject.list();
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }
   public List findby1100(String subject,int page){
		 try{
		   String queryString = "from userinf1 as model where model.subject= ?";
		     Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, subject);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(25);
			 return queryObject.list();
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }
   public List findby1101(String subject,String sex,int page){
		 try{
		   String queryString = "from userinf1 as model where model.subject= ? and model.sex= ?";
		     Query queryObject = getSession().createQuery(queryString);
		     queryObject.setParameter(0, subject);
			 queryObject.setParameter(1, sex);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(25);
			 return queryObject.list();
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }
   public List findby1110(String subject,String region,int page){
		 try{
		   String queryString = "from userinf1 as model where model.subject= ? and model.region= ?";
		     Query queryObject = getSession().createQuery(queryString);
			 queryObject.setParameter(0, subject);
			 queryObject.setParameter(1, region);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(25);
			 return queryObject.list();
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }
   public List findby1111(String subject,String region,String sex,int page){
		 try{
		   String queryString = "from userinf1 as model where model.subject= ? and model.region= ? and model.sex= ?";
		     Query queryObject = getSession().createQuery(queryString);
		     queryObject.setParameter(0, subject);
			 queryObject.setParameter(1, region);
			 queryObject.setParameter(2, sex);
			 queryObject.setFirstResult(page);
			 queryObject.setMaxResults(25);
			 return queryObject.list();
	    } catch (RuntimeException re) {
	       log.error("find by sexfailed", re);
	       throw re;
	    }
		
	   }
}