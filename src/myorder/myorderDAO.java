package myorder;
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
 * Data access object (DAO) for domain model class myorder.
 * @see .myorder
  * @author MyEclipse Persistence Tools 
 */

public class myorderDAO extends BaseHibernateDAO  {
    private static final Log log = LogFactory.getLog(myorderDAO.class);
	//property constants
	public static final String TEACHER = "teacher";
	public static final String STUDENT = "student";
	public static final String CELLPHONE = "cellphone";
	public static final String HOMEPHONE = "homephone";
	public static final String DATETIME = "datetime";
	public static final String STATUS = "status";
	public static final String REGION = "region";
	public static final String TEACHTIME = "teachtime";
	public static final String PAY = "pay";


    
    public void save(myorder transientInstance) {
        log.debug("saving myorder instance");
        try {
            getSession().save(transientInstance);
            log.debug("save successful");
        } catch (RuntimeException re) {
            log.error("save failed", re);
            throw re;
        }
    }
    
	public void delete(myorder persistentInstance) {
        log.debug("deleting myorder instance");
        try {
            getSession().delete(persistentInstance);
            log.debug("delete successful");
        } catch (RuntimeException re) {
            log.error("delete failed", re);
            throw re;
        }
    }
    
    public myorder findById( java.lang.Integer id) {
        log.debug("getting myorder instance with id: " + id);
        try {
            myorder instance = (myorder) getSession()
                    .get("myorder.myorder", id);
            return instance;
        } catch (RuntimeException re) {
            log.error("get failed", re);
            throw re;
        }
    }
    
    
    public List findByExample(myorder instance) {
        log.debug("finding myorder instance by example");
        try {
            List results = getSession()
                    .createCriteria("myorder")
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
      log.debug("finding myorder instance with property: " + propertyName
            + ", value: " + value);
      try {
         String queryString = "from myorder as model where model." 
         						+ propertyName + "= ?";
         Query queryObject = getSession().createQuery(queryString);
		 queryObject.setParameter(0, value);
		 return queryObject.list();
      } catch (RuntimeException re) {
         log.error("find by property name failed", re);
         throw re;
      }
	}
    public List findByMutiProperty(String propertyName1, Object value1,String propertyName2,Object value2) {
        
        try {
           String queryString = "from myorder as model where model." 
           						+ propertyName1 + "= ? and model."+propertyName2+"= ?";
           Query queryObject = getSession().createQuery(queryString);
  		 queryObject.setParameter(0, value1);
  		 queryObject.setParameter(1, value2);
  		 return queryObject.list();
  		
        } catch (RuntimeException re) {
           log.error("find by property name failed", re);
           throw re;
        }
  	}
	public List findByTeacher(Object teacher) {
		return findByProperty(TEACHER, teacher);
	}
	public List findByMutiTeacher(Object teacher) {
		return findByMutiProperty(TEACHER, teacher,STATUS,"yn");
	}
	public List findByMutiFTeacher(Object teacher) {
		return findByMutiProperty(TEACHER, teacher,STATUS,"yy");
	}

	public List findByStudent(Object student) {
		return findByProperty(STUDENT, student);
	}
	
	public List findByCellphone(Object cellphone) {
		return findByProperty(CELLPHONE, cellphone);
	}
	
	public List findByHomephone(Object homephone) {
		return findByProperty(HOMEPHONE, homephone);
	}
	
	public List findByDatetime(Object datetime) {
		return findByProperty(DATETIME, datetime);
	}
	
	public List findByStatus(Object status) {
		return findByProperty(STATUS, status);
	}
	
	public List findByRegion(Object region) {
		return findByProperty(REGION, region);
	}
	
	public List findByTeachtime(Object teachtime) {
		return findByProperty(TEACHTIME, teachtime);
	}
	
	public List findByPay(Object pay) {
		return findByProperty(PAY, pay);
	}
	

	public List findAll() {
		log.debug("finding all myorder instances");
		try {
			String queryString = "from myorder";
	         Query queryObject = getSession().createQuery(queryString);
			 return queryObject.list();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}
	
    public myorder merge(myorder detachedInstance) {
        log.debug("merging myorder instance");
        try {
            myorder result = (myorder) getSession()
                    .merge(detachedInstance);
            log.debug("merge successful");
            return result;
        } catch (RuntimeException re) {
            log.error("merge failed", re);
            throw re;
        }
    }
    public List firstone(){
	    Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Query myorder=sess.createQuery("from myorder");
		myorder.setFirstResult(0);
		myorder.setMaxResults(1);
		return myorder.list();
		
	}
    public List firstNstatus(){
	    Configuration conf=new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
		Session sess=sf.openSession();
		Query myorder=sess.createQuery("from myorder as p where p.status='n'");
		myorder.setFirstResult(0);
		myorder.setMaxResults(1);
		return myorder.list();
		
	}
    public void attachDirty(myorder instance) {
        log.debug("attaching dirty myorder instance");
        try {
            getSession().saveOrUpdate(instance);
            log.debug("attach successful");
        } catch (RuntimeException re) {
            log.error("attach failed", re);
            throw re;
        }
    }
    
    public void attachClean(myorder instance) {
        log.debug("attaching clean myorder instance");
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
		Query adminuser=sess.createQuery("from myorder");
		adminuser.setFirstResult(page);
		adminuser.setMaxResults(21);
		return adminuser.list();
	}
   
	public int count(){
		
		try {  
			String queryString = "select count(ordernum) from myorder";
			//Query queryObject = getSession().createQuery(queryString);
			return ((Integer)getSession().createQuery(queryString).iterate().next()).intValue();
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
    
    }
}